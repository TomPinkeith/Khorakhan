<?
  session_start();
  include "funzioni.php";
  if (! $apri) {
    die("Non hai effettuato il login!!!");
  }

  $thread = $_GET['dove'];

  $bache = $_GET['ind2'];

  $name = $_SESSION['nome'];

  accedi_db();

  $query = "SELECT permessi FROM personaggi WHERE nome=\"$name\"";
  $passo1 = mysql_query($query);
  list($perm) = mysql_fetch_array($passo1);
  if ($perm < 7) {
    die("Sezione riservata");
  }
  $query = "UPDATE threads SET chiuso=1 WHERE id=$thread";
  mysql_query($query);
?>
<html>
  <head>
    <title>
      Forum - Chiudi post
    </title>
  </head>
  <body background="sfondo.jpg">
    <center>
      <h1>
        Thread chiuso!
      </h1>
    </center>
  <meta http-equiv="refresh" content="3; url=vedi_post.php?ind=<? echo "$thread"."&ind2="."$bache"; ?>">