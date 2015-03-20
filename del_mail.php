<?
  session_start();

  include "funzioni.php";
  if (! $apri) {
    die("Non hai effettuato il login!!!");
  }
  accedi_db();

  $mess = $_GET['id'];

  $query = "SELECT destinatario FROM khoramail WHERE id=$mess";

  $passo = mysql_query($query);
 
  list($dest) = mysql_fetch_array($passo);

  $query1 = "UPDATE khoramail SET letto=2 WHERE id=$mess";

  $nome = $_SESSION['nome'];

  if ($nome == $dest) {
    mysql_query($query1);
  }

  echo "<meta http-equiv=\"refresh\" content=\"0; url=vedi_mail_bot.php\">\n";
?>
