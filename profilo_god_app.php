<?
  session_start();

  include "funzioni.php";
  if (! $apri) {
    die("Non hai effettuato il login!!!");
  }

  $id = $_GET['pg'];

  accedi_db();
?>
<html>
  <head>
  </head>
  <body background="sfondo.jpg" alink=blue vlink=blue link=blue>
  <form action="profilo_god_app_update.php<? echo "?pg=$pg"; ?>" method="post">
  <center>
<?
  $query = "SELECT appunti_master FROM personaggi WHERE id=$id";
  $passo = mysql_query($query);
  while (list($master) = mysql_fetch_array($passo)){
    echo "    <textarea rows=\"30\" cols=\"60\" name=\"master\">$master</textarea>";
  }
?>
    <br>
    <input type="submit" value="Salva le modifiche!!">
  </center>
  </form>
  </body>
</html>