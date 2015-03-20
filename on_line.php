<?
  session_start();
?>
<html>
<title>Elenco degli utenti online</title>
<body link="blue" vlink="blue" alink="blue" background="sfondo.jpg">
  <script language="Javascript">
    self.moveTo(0,screen.availHeight/2);
    self.resizeTo(screen.availWidth,screen.availHeight/2);
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
  $nome = $_SESSION['nome'];

  $start = strtotime("-6 minutes");

  $query = "SELECT id, nome, classe, stanza, hid, sesso, permessi FROM personaggi WHERE ultimo_accesso >= $start ORDER BY nome ASC";
  $passo1 = mysql_query($query);
  $utente = 0;
  $adesso = time();

  echo "<table width=\"70%\" align=\"center\" border=\"1\" bordercolor=000000 cellspacing=0 bgcolor=eacda3>\n";
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

  while (list($id, $name, $classe, $stanza, $hid, $sex, $perm) = mysql_fetch_array($passo1)) {
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