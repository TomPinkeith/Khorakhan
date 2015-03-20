<?
  session_start();

  include "funzioni.php";
  if (! $apri) {
    die("Non hai effettuato il login!!!");
  }

  $id = $_GET['id'];
  $nome = $_SESSION['nome'];

  accedi_db();

  $query1 = "SELECT permessi FROM personaggi WHERE nome=\"$nome\"";
  $passo1 = mysql_query($query1);
  list($perm) = mysql_fetch_array($passo1);

  if ($perm <= 6) {
    die ("Sezione riservata");
  }

  $query2 = "DELETE FROM threads WHERE id=$id";
  mysql_query($query2);

  echo "<html>\n<script>\nhistory.back();\n</script>\n";
?>