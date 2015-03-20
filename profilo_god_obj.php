<?
  session_start();

  include "funzioni.php";
  if (! $apri) {
    die("Non hai effettuato il login!!!");
  }

  $id = $_GET['pg'];
?>
<html>
  <head>
  </head>
  <body background="sfondo.jpg" alink=blue vlink=blue link=blue>
    <table align=center width=80% border=1 bordercolor=000000 cellspacing=0 bgcolor=eacda3 cellpadding=5>
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
        <td width=25% align=center bgcolor=ffffff>
          <b><font color=red>Venditore</font></b>
        </td>
      </tr>
<?
  accedi_db();

  $query1 = "SELECT nome FROM personaggi WHERE id=$id";
  $passo1 = mysql_query($query1);
  list($name) = mysql_fetch_array($passo1);

  $query = "SELECT oggetto, descr, costo, venditore FROM acquisti WHERE giocatore=\"$name\" ORDER BY oggetto ASC";
  $passo = mysql_query($query);
  while (list($oggetto, $descr, $costo, $venditore) = mysql_fetch_array($passo)){
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
    echo "        <td width=25% align=center>\n";
    echo "          ".$venditore."\n";
    echo "        </td>\n";
    echo "      </tr>\n";
  }
?>
    </table>
  </body>
</html>