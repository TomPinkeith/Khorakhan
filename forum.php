<?
  session_start();
  include "funzioni.php";
  if (! $apri) {
    die("Non hai effettuato il login!!!");
  }

  accedi_db();

  $nome = $_SESSION['nome'];

  $query = "SELECT permessi, cognome, gilda FROM personaggi WHERE nome=\"$nome\"";
  $passo = mysql_query($query);
  list($perm, $cognome, $gilda) = mysql_fetch_array($passo);

  if ($perm <= 1) {
    die("Non vi è permesso accedere al forum.");
  }
?>
<html>
  <head>
    <title>
      Forum
    </title>
  </head>
  <script language="javascript">
    self.moveTo(0,0);
    self.resizeTo(screen.availWidth,screen.availHeight);
  </script>
  <body background="sfondo.jpg" link=cc0000 alink=cc0000 vlink=cc0000>
    <center>
      <h1>
        Forum
        <hr>
      </h1>
      <h2>
        GDR ON
      </h2>
      <h3>
        <?
          $query2 = "SELECT nome, id FROM forum WHERE perm_lettura <= $perm AND gruppo=1 ORDER BY id ASC";
          $passo2 = mysql_query($query2);
          while(list($forum, $id) = mysql_fetch_array($passo2)) {
            echo "        <a href=\"vedi_forum.php?ind=$id\">$forum</a>\n";
            echo "        <br>\n";
          }
        ?>
      </h3>
      <hr>
      <h3>
        <?
          $query2 = "SELECT nome, id FROM forum WHERE perm_lettura <= $perm AND gruppo=3 ORDER BY id ASC";
          $passo2 = mysql_query($query2);
          while(list($forum, $id) = mysql_fetch_array($passo2)) {
            echo "        <a href=\"vedi_forum.php?ind=$id\">$forum</a>\n";
            echo "        <br>\n";
          }
        ?>
      </h3>
      <h2>
        GDR OFF
      </h2>
      <h3><?
          $query2 = "SELECT nome, id FROM forum WHERE perm_lettura <= $perm AND gruppo=2 ORDER BY id ASC";
          $passo2 = mysql_query($query2);
          while(list($forum, $id) = mysql_fetch_array($passo2)) {
            echo "        <a href=\"vedi_forum.php?ind=$id\">$forum</a>\n";
            echo "        <br>\n";
          }
        ?><br><?
          $query2 = "SELECT nome, id FROM forum WHERE perm_lettura <= $perm AND gruppo=4 ORDER BY id ASC";
          $passo2 = mysql_query($query2);
          while(list($forum, $id) = mysql_fetch_array($passo2)) {
            echo "        <a href=\"vedi_forum.php?ind=$id\">$forum</a>\n";
            echo "        <br>\n";
          }
        ?>
        <br>
        <?
          if ($cognome != "" OR $perm >= 7){
            echo "        <h2>CASATO</h2>\n";
          }
          $query2 = "SELECT nome, id FROM forum WHERE (gruppo=5 AND perm_categoria=\"$cognome\") OR (gruppo=5 AND perm_lettura <= $perm) ORDER BY id ASC";
          $passo2 = mysql_query($query2);
          while(list($forum, $id) = mysql_fetch_array($passo2)) {
            echo "        <a href=\"vedi_forum.php?ind=$id\">$forum</a>\n";
            echo "        <br>\n";
          }
        ?>
        <br>
        <?
          if ($gilda != "" OR $perm >= 7){
            echo "        <h2>GILDE</h2>\n";
          }
          $query2 = "SELECT nome, id FROM forum WHERE (gruppo=6 AND perm_categoria=\"$gilda\") OR (gruppo=6 AND perm_lettura <= $perm) ORDER BY id ASC";
          $passo2 = mysql_query($query2);
          while(list($forum, $id) = mysql_fetch_array($passo2)) {
            echo "        <a href=\"vedi_forum.php?ind=$id\">$forum</a>\n";
            echo "        <br>\n";
          }
        ?>
      </h3>
    </center>
  </body>
</html>