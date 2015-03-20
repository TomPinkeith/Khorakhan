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
    <table align=center width=60% border=1 bordercolor=000000 cellspacing=0 bgcolor=eacda3 cellpadding=5>
      <tr>
        <td width=25% align=center bgcolor=ffffff>
          <b><font color=red>Oggetto</font></b>
        </td>
        <td width=40% align=center bgcolor=ffffff>
          <b><font color=red>Descrizione</font></b>
        </td>
        <td width=15% align=center bgcolor=ffffff>
          <b><font color=red>Valore</font></b>
        </td>
      </tr>
<?
  $query = "SELECT oggetto, descr, costo FROM acquisti WHERE giocatore=\"$nome\" ORDER BY oggetto ASC";
  $passo = mysql_query($query);
  while (list($oggetto, $descr, $costo) = mysql_fetch_array($passo)){
    echo "      <tr>\n"; 
    echo "        <td width=25% align=center>\n";
    echo "          ".$oggetto."\n";
    echo "        </td>\n";
    echo "        <td width=40% align=left>\n";
    echo "          ".$descr."\n";
    echo "        </td>\n";
    echo "        <td width=15% align=center>\n";
    echo "          ".$costo."\n";
    echo "        </td>\n";
    echo "      </tr>\n";
  }
?>
    </table>
  </body>
</html>