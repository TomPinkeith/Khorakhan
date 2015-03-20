<? session_start(); ?>
<html>
<body link="blue" vlink="blue" alink="blue" background="sfondo.jpg">
<center>
  <?
    include "funzioni.php";
  if (! $apri) {
    die("Non hai effettuato il login!!!");
  }
    accedi_db();

    $id = $_GET['pg'];
    $query = "SELECT nome, monete FROM personaggi WHERE id=$id";
    $passo1 = mysql_query($query);
    list($name, $monete) = mysql_fetch_array($passo1);
    echo "Monete a disposizione per $name: $monete\n";
  ?>
  <br>
  <br>
  Transazioni:
  <br>
  <table border="1" align="center">
  <?
    $query = "SELECT data, pagante, ricevente, quota, motivo FROM scambi WHERE pagante=\"$name\" OR ricevente=\"$name\" ORDER BY data ASC";
    $passo1 = mysql_query($query);
    while (list($data, $pag, $ric, $quota, $motivo) = mysql_fetch_array($passo1)) {
      $data = date("d - n - Y  H:i", $data);
      if ($ric == $nome) {
        echo "<tr><td align=\"center\"> $data </td><td align=\"center\"> Ricevute $quota monete da $pag per $motivo</td></tr>\n";
      } 
      if ($pag == $nome) {
        echo "<tr><td align=\"center\"> $data </td><td align=\"center\"> Pagate $quota monete a $ric per $motivo</td></tr>\n";
      }
    }
  ?>
  </table>