<?
  session_start();

  include "funzioni.php";
  if (! $apri) {
    die("Non hai effettuato il login!!!");
  }
  accedi_db();

  $nome = $_SESSION['nome'];

  $chg = $_GET['chg'];

  switch ($chg) {
    case 0:
      $stanza = "MAPPA";
      break;
    case 1:
      $stanza = "PALAZZO REALE";
      break;
    case 2:
      $stanza = "TEMPIO";
      break;
    case 3:
      $stanza = "LIBER ARCANE";
      break;
    case 4:
      $stanza = "ACCADEMIA GUERRIERI";
      break;
    case 5:
      $stanza = "TAVERNA";
      break;
    case 6:
      $stanza = "TEATRO";
      break;
    case 7:
      $stanza = "MERCATO";
      break;
    case 8:
      $stanza = "BOSCO";
      break;
    case 100:
      $query = "SELECT stanza FROM personaggi WHERE nome=\"$nome\"";
      $passo1 = mysql_query($query);
      list($stanza) = mysql_fetch_array($passo1);
      break;
  }

?>
<script language="JavaScript">
  function cambia() {
    document.frame.posizione.location.href="posizione.php";
  }
</script>
<?
  $query = "UPDATE personaggi SET stanza=\"$stanza\" WHERE nome=\"$nome\"";
  mysql_query($query);

  switch ($stanza) {

    case "MAPPA":
      include "head.htm";
      echo "\n<img src=\"khorakhan.jpg\" usemap=\"#mappa\" border=\"0\">\n";
      echo "<map name=\"mappa\">\n";
      echo "  <area shape=\"poly\" coords=\"77,413 151,393 150,345 100,334 54,370 \" href=\"main.php?chg=1\" alt=\"Palazzo reale\" onclick=\"javascript:cambia();\">\n";
      echo "  <area shape=\"poly\" coords=\"219,344 337,346 407,286 313,235 \" href=\"main.php?chg=2\" alt=\"Tempio\" onclick=\"javascript:cambia();\">\n";
      echo "  <area shape=\"poly\" coords=\"142,178 229,163 223,85 128,101 \" href=\"main.php?chg=3\" alt=\"Liber Arcane\" onclick=\"javascript:cambia();\">\n";
      echo "  <area coords=\"325,78,418,175\" href=\"main.php?chg=4\" alt=\"Accademia guerrieri\" onclick=\"javascript:cambia();\">\n";
      echo "  <area coords=\"415,366,498,426\" href=\"main.php?chg=5\" alt=\"Taverna\" onclick=\"javascript:cambia();\">\n";
      echo "  <area coords=\"235,460,340,565\" href=\"main.php?chg=6\" alt=\"Teatro\" onclick=\"javascript:cambia();\">\n";
      echo "  <area coords=\"464,202,541,278\" href=\"main.php?chg=7\" alt=\"Mercato\" onclick=\"javascript:cambia();\">\n";
      echo "  <area shape=\"poly\" coords=\"100,326 167,295 190,319 229,257 177,213 104,204 84,273 \" href=\"main.php?chg=8\" alt=\"Bosco\" onclick=\"javascript:cambia();\">\n";

//8      echo "  <area shape=\"poly\" coords=\"104,26,162,8,242,1,321,2,398,17,405,31,410,80,426,122,452,172,456,215,392,340,332,398,267,428,216,430,155,409,57,331,14,274,0,223,6,187,44,107,101,31,117,38,95,58,36,142,15,194,11,224,18,259,36,296,78,337,147,394,200,418,236,422,269,419,326,389,380,337,444,215,432,169,411,128,396,80,392,44,383,31,335,20,252,16,188,20,140,29,122,37,120,37\" href=\"main.php?chg=8\">\n";

      echo "</map>\n";
      break;
    case "TAVERNA":
      echo "<meta http-equiv=\"refresh\" content=\"0; url=taverna.php\">\n";
      break;
    case "MERCATO":
      echo "<meta http-equiv=\"refresh\" content=\"0; url=mercato.htm\">\n";
      break;
    case "PALAZZO REALE":
      echo "<meta http-equiv=\"refresh\" content=\"0; url=palazzo.htm\">\n";
      break;
    case "ACCADEMIA GUERRIERI":
      $query1 = "SELECT permessi FROM personaggi WHERE nome=\"$nome\"";
      list($perm) = mysql_fetch_array(mysql_query($query1));
      if ($perm <= 3) {
        echo "<meta http-equiv=\"refresh\" content=\"0; url=accademie.htm\">\n";
        break;
      }
    case "LIBER ARCANE":
      $query1 = "SELECT permessi FROM personaggi WHERE nome=\"$nome\"";
      list($perm) = mysql_fetch_array(mysql_query($query1));
      if ($perm <= 3) {
        echo "<meta http-equiv=\"refresh\" content=\"0; url=accademie.htm\">\n";
        break;
      }
    default:
      echo "<frameset rows=\"*,60\" cols=\"*\" noresize border=0>\n";
      echo "  <frame src=\"chat.php?agg=0#bott\" noresize>\n";
      echo "  <frame src=\"parla.htm\" noresize scrollbars=no>\n";
      echo "</frameset>\n";
      break;
  }