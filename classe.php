<html>
<body background="sfondo.jpg" link="blue" alink="blue" vlink="blue">
<?
  include "funzioni2.php";

  accedi_db();

  $quale = $_GET['classe'];

  echo "<title>Descrizione razze - $quale</title>";

  echo "  <center>\n    <h1>\n      $quale\n    </h1>\n  </center>\n";

  $query = "SELECT descrizione, beghe, descr, pf FROM classi WHERE classe=\"$quale\"";
  $passo = mysql_query($query);
  list($descr, $beghe, $dbeghe, $pf) = mysql_fetch_array($passo);

  echo "  <table width=\"70%\" border=1 align=\"center\">\n";
  echo "    <tr>\n      <td>\n        $descr\n";
  echo "        <br>\n";

  echo "        <center>\n";
  echo "          Dado Vita: d$pf\n";
  echo "        </center>\n";

  echo "      </td>\n";
  echo "    </tr>\n";
  echo "  </table>\n";
  echo "  <table width=\"70%\" border=1 align=\"center\">\n";

  $beghe = explode("\",\"",$beghe);
  $descr = explode("\",\"",$dbeghe);

  for ($i = 0;$i < count($beghe);$i++) {
    echo "    <tr>\n";
    echo "      <td width=\"30%\" align=\"center\">\n";
    echo "        $beghe[$i]\n";
    echo "      </td>\n";
    echo "      <td width=\"70%\">\n";
    echo "        $descr[$i]\n";
    echo "      </td>\n";
  }
?>