<?
  session_start();

  include "funzioni.php";
  if (! $apri) {
    die("Non hai effettuato il login!!!");
  }

  $index = $_GET['index'];
  $costo = $_GET['costo'];

  accedi_db();
  $nome = $_SESSION['nome'];
  list($ex, $px) = mysql_fetch_array(mysql_query("SELECT abilita, px FROM personaggi WHERE nome=\"$nome\""));
  $new = $ex * $index;
  mysql_query("UPDATE personaggi SET abilita=\"$new\" WHERE nome=\"$nome\"");
  $new = $px - $costo;
  mysql_query("UPDATE personaggi SET px=\"$new\" WHERE nome=\"$nome\"");
?>
<script language="JavaScript">
  history.back();
</script>