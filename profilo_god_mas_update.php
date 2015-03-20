<?
  session_start();

  include "funzioni.php";
  if (! $apri) {
    die("Non hai effettuato il login!!!");
  }
  accedi_db();

  $id = $_GET['pg'];

  $mas = $_POST['master'];

  $query = "UPDATE personaggi SET note_master=\"$mas\" WHERE id=$id";
  mysql_query($query);
?>
<meta http-equiv="refresh" content="0; url=profilo_god_mas.php<? echo "?pg=$id"; ?>">