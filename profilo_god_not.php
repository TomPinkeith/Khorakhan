<?
  session_start();

  include "funzioni.php";
  if (! $apri) {
    die("Non hai effettuato il login!!!");
  }
  accedi_db();

  $id = $_GET['pg'];

  $query = "SELECT note FROM personaggi WHERE id=$id";
  $passo1 = mysql_query($query);
  list($note) = mysql_fetch_array($passo1);
?>
<html>
<body link="blue" vlink="blue" alink="blue" background="sfondo.jpg">
<center>
  <form action="profilo_pers_not_update.php" method="POST">
    <textarea rows=30 cols=60 name="note"><? echo $note; ?></textarea>
  </form>
</center>