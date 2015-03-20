<?
  session_start();
  include "funzioni.php";
  if (! $apri) {
    die("Non hai effettuato il login!!!");
  }

  accedi_db();

  $dove = $_POST['locazione'];

  $nome = $_SESSION['nome'];

  $query = "UPDATE personaggi SET hid=\"$dove\" WHERE nome=\"$nome\"";
  mysql_query($query);
?>
<meta http-equiv="refresh" content="0; url=profilo_pers_bot.php">