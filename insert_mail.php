<?
  session_start();

  include "funzioni.php";
  if (! $apri) {
    die("Non hai effettuato il login!!!");
  }
  accedi_db();

  $mitt = $_SESSION['nome'];
  $dest = $_POST["destinatario"];
  $data = time();
  $text = $_POST['testo'];
  $obj = $_POST['oggetto'];

  if ($dest == "Seleziona destinatario"){
    die("<meta http-equiv=\"refresh\" content=\"2; url=vedi_mail_bot.php\">\n Seleziona un destinatario");
  }

  if ($obj == "") {
    $obj = "Nessun oggetto";
  }

  $query = "INSERT INTO khoramail (mittente, destinatario, data, oggetto, messaggio) VALUES (\"$mitt\", \"$dest\", $data, \"$obj\", \"$text\")";

echo "<body link=\"blue\" vlink=\"blue\" alink=\"blue\" background=\"sfondo.jpg\">";
    echo "<center><h1>\n";
  if (mysql_query($query)) {
    echo "Messaggio inserito correttamente<br>Attendi qualche secondo...";
  } else {
    echo "Errore nell'inserimento del messaggio";
  }
?>
<meta http-equiv="refresh" content="3; url=vedi_mail_bot.php">
