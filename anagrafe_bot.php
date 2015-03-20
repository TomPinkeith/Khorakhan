<?
  session_start();
?>
<title>Anagrafe</title>
<body link="blue" vlink="blue" alink="blue" background="sfondo.jpg">
<script language='javascript'>
  function profilo(chi) {
    window.open('vedi_profilo.php?id='+chi,'','toolbar=0,menubar=0,directories=0,location=0,scrollbars=1,status=0,resizable=1')
  }
</script>
<?
  include "funzioni.php";
  if (! $apri) {
    die("Non hai effettuato il login!!!");
  }

  accedi_db();

  $quando = strtotime("-2 months");

  $nome = $_SESSION['nome'];

  $lett = $_GET['lect'];

  if ($lett == "search") {
    $r_nome = $_POST['nome'];
    $r_carica = $_POST['carica'];
    $r_razza = $_POST['razza'];
    $r_sesso = $_POST['sesso'];

    if ($r_sesso == "Entrambi") {
      $r_sesso = "";
    }

    if ($r_razza == "Qualsiasi") {
      $r_razza = "";
    }

    $query = "SELECT COUNT(*) FROM personaggi WHERE nome LIKE \"%$r_nome%\" AND razza LIKE \"%$r_razza%\" AND classe LIKE \"%$r_carica%\" AND sesso LIKE \"%$r_sesso%\"";
    $passo = mysql_query($query);

    $query1 = "SELECT id, nome, ultimo_accesso, classe, stanza, hid, sesso, permessi FROM personaggi WHERE nome LIKE \"%$r_nome%\" AND razza LIKE \"%$r_razza%\" AND classe LIKE \"%$r_carica%\" AND sesso LIKE \"%$r_sesso%\" ORDER BY nome ASC";
    $passo1 = mysql_query($query1);
  } else {
    $query = "SELECT COUNT(*) FROM personaggi WHERE nome LIKE \"$lett%\" AND ultimo_accesso > $quando";
    $passo = mysql_query($query);

    $query1 = "SELECT id, nome, ultimo_accesso, classe, stanza, hid, sesso, permessi FROM personaggi WHERE nome LIKE \"$lett%\" AND ultimo_accesso > $quando ORDER BY nome ASC";
    $passo1 = mysql_query($query1);
  }

  list($i) = mysql_fetch_array($passo);

  $utente = 0;
  $adesso = time();

  if (isset($_GET['lect'])){
    if ($_GET['lect'] == "search") {
      echo "<center><b>Personaggi corrispondenti alla ricerca: $i<br><br>\n";
    } else {
      echo "<center><b>Personaggi il cui nome inizia con la ".strtoupper($lett).": $i<br><br>\n";
    }
  } else {
    echo "<center><b>Personaggi iscritti: $i<br><br>\n";
  }

  echo "<table width=\"75%\" align=\"center\" border=\"1\" bordercolor=000000 cellspacing=0 bgcolor=eacda3>\n";

  echo "  <tr>\n";
  echo "    <td width=\"25%\" align=\"center\" bgcolor=ffffff>\n";
  echo "      <b><font color=\"red\">Nome";
  echo "    </td>\n";
  echo "    <td width=\"25%\" align=\"center\" bgcolor=ffffff>\n";
  echo "      <b><font color=\"red\">Luogo";
  echo "    </td>\n";
  echo "    <td width=\"25%\" align=\"center\" bgcolor=ffffff>\n";
  echo "      <b><font color=\"red\">Carica\n";
  echo "    </td>\n";
  echo "  </tr>\n";

  while (list($id, $name, $ultimo, $classe, $stanza, $hid, $sex, $perm) = mysql_fetch_array($passo1)) {
    if($perm >= 5) {
      if ($hid != "") {
        $stanza = $hid;
      }
    }

    echo "  <tr>\n";
    echo "    <td width=\"25%\" align=\"center\">\n";
    echo "      <a href=\"javascript:profilo($id);\" ";
    if ($sex == "M") {
      echo "style=color:#3333CC";
    } else {
      echo "style=color:#CC3399";
    }
    echo ">\n<b>";
    echo "        $name\n";
    echo "      </a>\n";
    echo "    </td>\n";
    echo "    <td width=\"25%\" align=\"center\">\n";
    $stanza = explode(":", $stanza);
    $stanza = $stanza[0];
    echo "      $stanza";
    echo "    </td>\n";
    echo "    <td width=\"25%\" align=\"center\">\n";
    echo "      $classe\n";
    echo "    </td>\n";
    echo "  </tr>\n";
  }
  echo "</table>";
?>