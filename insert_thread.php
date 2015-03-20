<?
  session_start();

  include "funzioni.php";
  if (! $apri) {
    die("Non hai effettuato il login!!!");
  }

  accedi_db();
/*
  include "db.conf.php";

  if (! $db = mysql_connect($db_host, $db_user, $db_pass)) {
    die("1");
  }
  if (! mysql_select_db($db_name, $db)) {
    die("2");
  }
*/

  $nome = $_SESSION['nome'];
  $bacheca = $_GET['ind'];
  $titolo = $_POST['titolo'];
  $testo = $_POST['testo'];
  $data = time();

  $query1 = "INSERT INTO threads (id, titolo, autore, data, forum, data_ultima) VALUES (\"\", \"$titolo\", \"$nome\", \"$data\", \"$bacheca\", \"$data\")";
  if (! mysql_query($query1)){
    die("Errore nell'inserimento del thread");
  }

  $query2 = "SELECT id, data FROM threads WHERE titolo=\"$titolo\" ORDER BY data DESC";
  $passo1 = mysql_query($query2);
  if (! $passo1) {
    die("Retrieving data "."$query2");
  }
  list($thread) = mysql_fetch_array($passo1);

  $query3 = "INSERT INTO posts (id, autore, thread, data, testo) VALUES (\"\", \"$nome\", \"$thread\", \"$data\", \"$testo\")";
  if (! mysql_query($query3)){
    die("Errore nell'inserimento del post");
  }

  echo "<meta http-equiv=\"refresh\" content=\"3; url=vedi_forum.php?ind=$bacheca\">\n";
?>
<title>Inserimento riuscito</title>
<body background="sfondo.jpg">
<center>
<h1>
Inserimento corretto, attendere qualche secondo...