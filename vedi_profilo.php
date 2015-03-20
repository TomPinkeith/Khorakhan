<? session_start(); ?>
<html>
<title>Profilo di un giocatore</title>
<script language="JavaScript">
  self.moveTo(0,0);
  self.resizeTo(screen.availWidth,screen.availHeight);
</script>
<body link="blue" vlink="blue" alink="blue" background="sfondo.jpg">
<center>
<?
  $id = $_GET['id'];
  include "funzioni.php";
  if (! $apri) {
    die("Non hai effettuato il login!!!");
  }
  accedi_db();

  $nome = $_SESSION['nome'];

  $query = "SELECT permessi FROM personaggi WHERE nome=\"$nome\"";
  $passo = mysql_query($query);
  list($perm) = mysql_fetch_array($passo);

  if ($perm >= 6) {
    echo "<a href=\"profilo_god.php?pg=$id\"><img src=\"bott_entra_profilo.gif\" border=0></a><p>";
  }

  $query = "SELECT nome, sesso, razza, data_creazione, descrizione, storia, ultimo_accesso, classe, px, img, note_master, archetipo FROM personaggi WHERE id=$id";

  $passo1 = mysql_query($query);

  list($name, $sex, $razza, $creazione, $descrizione, $storia, $accesso, $classe, $px, $img, $master, $arche) = mysql_fetch_array($passo1);
    echo "<a href=\"$img\">\n";
    echo "  <img src=\"$img\" width=300 border=0>\n";
    echo "</a>\n";
    echo "<p>\n";
    echo "<table width=\"75%\" align=center border=1 bordercolor=000000 cellspacing=0 bgcolor=eacda3 cellpadding=5>\n";
    echo "  <tr>\n";

    if ($sex != "M") {
      $color = "cc3399";
    } else {
      $color = "3333cc";
    }

    echo "    <td width=100% bgcolor=ffffff>\n";
    echo "      <center><font size=5 color=$color><b>\n";
    echo "        $name\n";
    echo "      </b></font></center>\n";
    echo "    </td>\n";
    echo "  </tr>\n";
    echo "  <tr>\n";
    echo "    <td width=100%>\n";
    echo "      <font color=cc0000>\n";
    if ($arche != "Nessuno") {
      $razza = "$razza / $arche";
    }
    echo "        Razza: </font>$razza<font color=cc0000>\n";
    echo "        <br>\n";
    echo "        <br>\n";
    echo "        Carica: </font>$classe<font color=cc0000>\n";
    echo "        <br>\n";
    echo "        <br>\n";
    echo "        Descrizione:\n";
    echo "      </font>\n";
    echo "      <br>\n";
    echo "      ".nl2br($descrizione)."\n";
    echo "      <br>\n";
    echo "      <br>\n";
    echo "      <font color=cc0000>\n";
    echo "        Storia:\n";
    echo "      </font>\n";
    echo "      <br>\n";
    echo "      ".nl2br($storia)."\n";
    echo "    </td>\n";
    echo "  </tr>\n";
    echo "</table>\n";
    echo "<p>\n";
    echo "<table align=center width=60% border=1 bgcolor=white>\n";
    echo "  <tr>\n";
    echo "    <td>\n";
    echo "      ".nl2br($master)."\n";
    echo "    </td>\n";
    echo "  </tr>\n";
    echo "</table>\n";
?>

