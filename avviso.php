<?
  session_start();

  include "funzioni.php";
  if (! $apri) {
    die("Non hai effettuato il login!!!");
  }

  accedi_db();

  $name = $_SESSION['nome'];

  $query = "SELECT permessi FROM personaggi WHERE nome=\"$name\"";

  $passo1 = mysql_query($query);

  list($perm) = mysql_fetch_array($passo1);

  if ($perm < 7) {
    die("Sezione riservata");
  }

  $mess = $_POST['messaggio'];
  $data = time();

  if ($mess != "") {
    $query = "INSERT INTO chat (data, autore, messaggio, luogo, idaut) VALUES ($data, \"Itzamna\", \"###$mess\", \"ALL\", 1)";
    mysql_query($query);
  }

  echo "<meta http-equiv=\"refresh\" content=\"0; url=admin.php\">\n";
?>