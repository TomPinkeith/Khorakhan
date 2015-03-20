<?
  session_start();
  include "funzioni.php";
  if (! $apri) {
    die("Non hai effettuato il login!!!");
  }

  accedi_db();

  $name = $_SESSION['nome'];

  $ind = $_GET['ind'];

  $ind2 = $_GET['ind2'];

  $dest = array($_POST['dest1'], $_POST['dest2'], $_POST['dest3'], $_POST['dest4'], $_POST['dest5']);

  $data = time();

  for ($i=0;$i<5;$i++) {
    if($dest[$i] != "Seleziona destinatario") {
      $query1 = "SELECT titolo FROM threads WHERE id=\"$ind\"";
      list($titolo) = mysql_fetch_array(mysql_query($query1));

      $query2 = "SELECT id FROM khoramail WHERE mittente=\"Forum\" AND oggetto=\"Segnalazione thread\" AND destinatario=\"$dest[$i]\" AND messaggio LIKE \"$name%\" AND messaggio LIKE \"%$titolo</a>\"";

      if (list($id) = mysql_fetch_array(mysql_query($query2))) {
        $query3 = "UPDATE khoramail SET letto=0, data=$data WHERE id=$id";
        mysql_query($query3);
      } else {
        $query3 = "INSERT INTO khoramail (mittente, destinatario, oggetto, messaggio, data) VALUES (\"Forum\", \"$dest[$i]\", \"Segnalazione thread\", \"$name pensa che ti possa interessare il thread <a href=\\\"javascript:forum($ind,$ind2)\\\">$titolo</a>\", $data)";
        mysql_query($query3);
      }
    }
  }

  echo "<meta http-equiv=\"refresh\" content=\"0; url=vedi_post.php?ind=$ind&ind2=$ind2\">\n";