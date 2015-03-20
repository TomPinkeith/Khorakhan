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
        <td width=20% align=center bgcolor=ffffff>
          <font color=red><b>Quanità</b></font>
        </td>
        <td width=40% align=center bgcolor=ffffff>
          <font color=red><b>Spiegazione</b></font>
        </td>
        <td width=20% align=center bgcolor=ffffff>
          <font color=red><b>Master</b></font>
        </td>
      </tr>
<?
  $query = "SELECT motivo, master, quantità FROM esperienza WHERE giocatore=\"$nome\" AND fatto=1 ORDER BY data DESC";
  $passo = mysql_query($query);
  while (list($xche, $master, $quanti) = mysql_fetch_array($passo)){
    echo "      <tr>\n"; 
    echo "        <td width=20% align=center>\n";
    echo "          ".$quanti."\n";
    echo "        </td>\n";
    echo "        <td width=40% align=left>\n";
    echo "          ".$xche."\n";
    echo "        </td>\n";
    echo "        <td width=20% align=center>\n";
    echo "          ".$master."\n";
    echo "        </td>\n";
    echo "      </tr>\n";
  }
?>
    </table>
  </body>
</html>