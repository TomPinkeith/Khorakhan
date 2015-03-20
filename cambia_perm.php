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

  $chi = $_POST['cambiato'];
  $cosa = $_POST['permessi'];

  switch ($cosa) {
    case "ESPULSO":
      $new = 0;
      break;
    case "BLOCCATO":
      $new = 1;
      break;
    case "MORTO":
      $new = 2;
      break;
    case "CITTADINO":
      $new = 3;
      break;
    case "APPRENDISTA":
      $new = 4;
      break;
    case "MAESTRO":
      $new = 5;
      break;
    case "AMMINISTRATORE":
      $new = 7;
      break;
    case "PROGRAMMATORE":
      $new = 8;
      break;
    case "PROGRAMMATORE-MASTER":
      $new = 9;
      break;
  }

  $query = "UPDATE personaggi SET permessi=$new WHERE nome=\"$chi\"";
  mysql_query($query);

  echo "<meta http-equiv=\"refresh\" content=\"0; url=admin.php\">\n";
?>