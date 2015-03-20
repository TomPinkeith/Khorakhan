<?
  session_start();

  include("funzioni.php");
  if (! $apri) {
    die("Non hai effettuato il login!!!");
  }

  accedi_db();

  $query = "SELECT nome, data, che FROM entrate ORDER BY data DESC LIMIT 0,5";
  $passo1 = mysql_query($query);
?>
  <h5>
<html>
  <? include "head.htm"; ?>
<?
  while (list($cazzo, $merda, $figa) = mysql_fetch_array($passo1)) {
    $oggi1 = number_format(time()/86400,0, "", "");
    $oggi = 0;
    if ($oggi <= $merda) {
      $merda = date("H:i", $merda);
      $query2 = "SELECT sesso FROM personaggi WHERE nome=\"$cazzo\"";
      $passo2 = mysql_query($query2);
      list($sex) = mysql_fetch_array($passo2);
      if ($sex == "F") {
        $sss = "a";
      } else {
        $sss = "o";
      }
      if ($figa == 0) {
        echo "$merda - $cazzo è entrat".$sss."!<br>\n";
      } else {
        echo "$merda - $cazzo è uscit".$sss."!<br>\n";
      }
    }
  }
?>