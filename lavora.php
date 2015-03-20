<?
  session_start();

  include "funzioni.php";
  if (! $apri) {
    die("Non hai effettuato il login!!!");
  }

  $nome = $_SESSION['nome'];

  $lavoro = $_GET['lav'];

  $data = time();

  accedi_db();

  $query_1 = "SELECT paga, lavoro FROM lavori WHERE id=$lavoro";
  $passo_1 = mysql_query($query_1);
  list($paga, $lav) = mysql_fetch_array($passo_1);

  $query_2 = "UPDATE personaggi SET monete=monete+$paga WHERE nome=\"$nome\"";
  mysql_query($query_2);

  $query_3 = "INSERT INTO lavoratori (lavoratore, lavoro, ora) VALUES (\"$nome\", \"$lav\", \"$data\")";
  mysql_query($query_3);
?>
<html>
<title>Lavora</title>
<meta http-equiv="refresh" content="0; url=lavoro.php">