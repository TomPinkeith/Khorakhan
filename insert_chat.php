<?
  session_start();

  include "funzioni.php";
  if (! $apri) {
    die("Non hai effettuato il login!!!");
  }
  accedi_db();

  $data = time();
  $autore = $_SESSION['nome'];
  $messaggio = $_POST['messaggio'];

  $query = "SELECT stanza, id, permessi FROM personaggi WHERE nome=\"$autore\"";
  $passo1 = mysql_query($query);
  list($luogo, $id, $perm) = mysql_fetch_array($passo1);

  $mess = explode("@",$messaggio);
  if ($mess[0] == "") {
    $luogo = $luogo.":".$mess[1];
    $messaggio = $mess[2];
  }

  $query = "INSERT INTO chat (data, autore, messaggio, luogo, idaut) VALUES ($data, \"$autore\", \"$messaggio\", \"$luogo\", \"$id\")";
  if ($messaggio == "clearallchat") {
    $query = "INSERT INTO chat (data, autore, messaggio, luogo, idaut) VALUES ($data, \"$autore\", \"$messaggio\", \"ALL\", \"$id\")";
  }

  if (strlen($messaggio) >= 450) {
    $query_1 = "UPDATE personaggi SET px=px+1 WHERE nome=\"$autore\" AND stanza NOT LIKE \"%PRIVATA%\"";
    mysql_query($query_1);
  }

  if ($perm >= 8) {
    if ($messaggio == "resetallchat") {
      $query = "TRUNCATE TABLE chat";
    }
    if ($messaggio == "resetentries") {
      $query = "TRUNCATE TABLE entrate";
    }
    if (substr($messaggio, 0, 3) == "***") {
      $query = stripslashes(substr($messaggio, 3));
    }
  }

  if ($perm >= 3) {
    $ins = mysql_query($query);
  }

  echo "<meta http-equiv=\"refresh\" content=\"0; url=parla.htm\">\n";

  if ($ins) {
    echo "Invio riuscito\n";
  } else {
    echo "Invio fallito\n";
  }
?>