<?
  session_start();

  include("funzioni.php");
  if (! $apri) {
    die("Non hai effettuato il login!!!");
  }

  accedi_db();

  $tipo = $_GET['tipo'];
  $nome = $_SESSION['nome'];

  echo "<html>\n";
  include "head.htm";
  echo "<title>Abilità</title>\n";

  switch($tipo) {
    case "attitudini":
      $query = "SELECT * FROM abilita WHERE tipo LIKE \"%attitudini%\" ORDER BY abilita ASC";
      break;
    case "capacità":
      $query = "SELECT * FROM abilita WHERE tipo LIKE \"%capacità%\" ORDER BY abilita ASC";
      break;
    case "conoscenze":
      $query = "SELECT * FROM abilita WHERE tipo LIKE \"%conoscenze%\" ORDER BY abilita ASC";
      break;
  }
?>
  <table align=center width=100% border=1 bordercolor=000000 cellspacing=0 bgcolor=eacda3 cellpadding=5>
    <tr>
      <td align=center width=10% bgcolor=ffffff>
        <font color=red>
          <b>
            Abilità
          </b>
        </font>
      </td>
      <td align=center width=43% bgcolor=ffffff>
        <font color=red>
          <b>
            Descrizione
          </b>
        </font>
      </td>
      <td align=center width=30% bgcolor=ffffff>
        <font color=red>
          <b>
            Gradi
          </b>
        </font>
      </td>
      <td align=center width=7% bgcolor=ffffff>
        <font color=red>
          <b>
            Costo
          </b>
        </font>
      </td>
      <td align=center width=8% bgcolor=ffffff>
        <font color=red>
          <b>
            Acquista
          </b>
        </font>
      </td>
    </tr>
<?
  $passo_1 = mysql_query($query);
  while(list($abilita, $descr_t, $tipo, $costo[0], $costo[1], $costo[2], $costo[3], $costo[4], $costo[5], $descr[0], $descr[1], $descr[2], $descr[3], $descr[4], $descr[5]) = mysql_fetch_array($passo_1)) {
    echo "    <tr>\n";
    echo "      <td align=center rowspan=6>\n";
    echo "        $abilita\n";
    echo "      </td>\n";
    echo "      <td rowspan=6>\n";
    echo "        $descr_t\n";
    echo "      </td>\n";
    echo "      <td align=center>\n";
    echo "        1. $descr[0]\n";
    echo "      </td>\n";
    echo "      <td align=center>\n";
    echo "        $costo[0]\n";
    echo "      </td>\n";
    echo "      <td align=center width=7%>\n";
    echo "        Acquista\n";
    echo "      </td>\n";
    echo "    </tr>\n";

    for ($i=1; $i <= count($descr)-1; $i++) {
      echo "    <tr>\n";
      echo "      <td align=center>\n";
      echo "        $i. $descr[$i]\n";
      echo "      </td>\n";
      echo "      <td align=center>\n";
      echo "        $costo[$i]\n";
      echo "      </td>\n";
      echo "      <td align=center>\n";
      echo "        Acquista\n";
      echo "      </td>\n";
      echo "    </tr>\n";
    }
  }
  echo "</table>\n";
?>