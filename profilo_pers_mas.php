<?
  session_start();

  include "funzioni.php";
  if (! $apri) {
    die("Non hai effettuato il login!!!");
  }

  $nome = $_SESSION['nome'];

  accedi_db();
?>
<html>
  <head>
  </head>
  <body background="sfondo.jpg" alink=blue vlink=blue link=blue>
    <table align=center width=60% border=1 bgcolor=white>
<?
  $query = "SELECT note_master FROM personaggi WHERE nome=\"$nome\"";
  $passo = mysql_query($query);
  while (list($master) = mysql_fetch_array($passo)){
    echo "      <tr>\n"; 
    echo "        <td width=20%>\n";
    echo "          ".nl2br($master)."\n";
    echo "        </td>\n";
    echo "      </tr>\n";
  }
?>
    </table>
  </body>
</html>