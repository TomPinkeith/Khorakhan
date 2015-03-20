<?
  session_start();

  $pass = $_POST['pass'];
  $mail = $_POST['mail'];
  $hmail = $_POST['hmail'];
  $descr = $_POST['descrizione'];
  $storia = $_POST['storia'];
  $img = $_POST['foto'];

  $_SESSION['pass'] = $pass;

  $nome = $_SESSION['nome'];

  include "funzioni.php";
  if (! $apri) {
    die("Non hai effettuato il login!!!");
  }
  accedi_db();

  $query = "UPDATE personaggi SET pass=\"$pass\" WHERE nome=\"$nome\"";
  mysql_query($query);

  $query = "UPDATE personaggi SET hmail=\"$hmail\" WHERE nome=\"$nome\"";
  mysql_query($query);

  $query = "UPDATE personaggi SET descrizione=\"$descr\" WHERE nome=\"$nome\"";
  mysql_query($query);

  $query = "UPDATE personaggi SET storia=\"$storia\" WHERE nome=\"$nome\"";
  mysql_query($query);

  $query = "UPDATE personaggi SET img=\"$img\" WHERE nome=\"$nome\"";
  mysql_query($query);

  echo "<meta http-equiv=\"refresh\" content=\"0; url=profilo_pers_bot.php\">";
?>