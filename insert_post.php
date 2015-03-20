<?
  session_start();

  include "funzioni.php";
  if (! $apri) {
    die("Non hai effettuato il login!!!");
  }

  accedi_db();

  $nome = $_SESSION['nome'];
  $thread = $_GET['ind'];
  $testo = $_POST['testo'];
  $data = time();

  $query1 = "INSERT INTO posts (id, autore, thread, data, testo) VALUES (\"\", \"$nome\", \"$thread\", \"$data\", \"$testo\")";
  if (! mysql_query($query1)) {
    die("Errore nell'inserimento del post");
  }

  $query2 = "SELECT autore, titolo, forum FROM threads WHERE id=$thread";
  $passo2 = mysql_query($query2);

  list($chi, $dove, $bacheca) = mysql_fetch_array($passo2);

  $query3 = "UPDATE threads SET data_ultima=$data WHERE id=$thread";
  mysql_query($query3);

  $query4 = "SELECT id FROM khoramail WHERE mittente=\"Forum\" AND destinatario=\"$chi\" AND messaggio LIKE \"%>$dove</a>\"";
  $passo4 = mysql_query($query4);

  if ($nome != $chi) {
    if (list($id) = mysql_fetch_array($passo4)) {
      $query5 = "UPDATE khoramail SET messaggio=\"$nome ti ha risposto nel thread <a href=\\\"javascript:forum($thread,$bacheca)\\\">$dove</a>\", data=$data, letto=0 WHERE id=$id";
      mysql_query($query5);
    } else {
      $query5 = "INSERT INTO khoramail (mittente, destinatario, oggetto, messaggio, data) VALUES (\"Forum\", \"$chi\", \"Aggiornamento thread\", \"$nome ti ha risposto nel thread <a href=\\\"javascript:forum($thread,$bacheca)\\\">$dove</a>\", $data)";
      mysql_query($query5);
    }
  }

  echo "<meta http-equiv=\"refresh\" content=\"3; url=vedi_post.php?ind=$thread&ind2=$bacheca\">\n";
?>
<title>Inserimento riuscito</title>
<body background="sfondo.jpg">
<center>
<h1>
Inserimento corretto, attendere qualche secondo...