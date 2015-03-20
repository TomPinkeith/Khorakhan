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

  if ($perm < 8) {
    die("Sezione riservata");
  }

  $info = $_GET['info'];
  $come = $_GET['come'];

  $query = "SELECT giocatore, quantità FROM esperienza WHERE id=$info";
  list($giocatore, $toadd) = mysql_fetch_array(mysql_query($query));

  $query = "SELECT px FROM personaggi WHERE nome=\"$giocatore\"";
  list($oldpx) = mysql_fetch_array(mysql_query($query));

  $newpx = $oldpx + $toadd;

  if ($come == 1) {
    $query = "UPDATE personaggi SET px=$newpx WHERE nome=\"$giocatore\"";
    mysql_query($query);

    $query = "UPDATE esperienza SET fatto=1 WHERE id=$info";
    mysql_query($query);
  } else {
    $query = "UPDATE esperienza SET fatto=-1 WHERE id=$info";
    mysql_query($query);
  }

  echo "<meta http-equiv=\"refresh\" content=\"0; url=exp.php\">\n";
?>