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

    $nome = $_SESSION['nome'];
    $query = "SELECT monete FROM personaggi WHERE nome=\"$nome\"";
    $passo1 = mysql_query($query);
    list($monete) = mysql_fetch_array($passo1);
    echo "Monete a disposizione per $nome: $monete\n";
  ?>
  <br>
  <br>
  <hr>
  <form action="profilo_pers_mon_update.php" method="post">
    Destinatario:
    <select name="destinatario" size="1">
      <option>Seleziona destinatario</option>

  <?
    $query1 = "SELECT nome FROM personaggi ORDER BY nome ASC";

    $passo1 = mysql_query($query1);

    while (list($nomi) = mysql_fetch_array($passo1)) {
      echo "      <option>$nomi</option>\n";
    }
    ?>
    </select>
    <br>
    Importo:
    <input type="text" name="quota" size="20">
    <br>
    Causale:
    <input type="text" name="motivo" size="20">
    <br>
    <input type="submit" value="Consegna denaro!">
  </form>
  <hr>
  <br>
  Transazioni:
  <br>
  <table border="1" align="center">
  <?
    $query = "SELECT data, pagante, ricevente, quota, motivo FROM scambi WHERE pagante=\"$nome\" OR ricevente=\"$nome\" ORDER BY data ASC";
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