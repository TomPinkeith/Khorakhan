<?
  session_start();

  include "funzioni.php";
  if (! $apri) {
    die("Non hai effettuato il login!!!");
  }
  accedi_db();

  $nome = $_SESSION['nome'];

  $note = $_POST['note'];

  $query = "UPDATE personaggi SET note=\"$note\" WHERE nome=\"$nome\"";
  mysql_query($query);
?>
<meta http-equiv="refresh" content="0; url=profilo_pers_not.php">