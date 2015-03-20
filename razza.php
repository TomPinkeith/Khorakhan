<body background="sfondo.jpg" link="blue" alink="blue" vlink="blue">
<?
  include "funzioni2.php";

  accedi_db();

  $quale = $_GET['razza'];
  $dove = $_GET['tipo'];
  $campo = $_GET['campo'];

  echo "<html>\n<title>Descrizione razze - $quale</title>";

  echo "  <center>\n    <h1>\n      $quale\n    </h1>\n  </center>\n";

  $query = "SELECT descrizione FROM $dove WHERE $campo=\"$quale\"";
  $passo = mysql_query($query);
  list($descr) = mysql_fetch_array($passo);

  echo "  <table width=\"70%\" border=0 align=\"center\">\n";
  echo "    <tr>\n";
  echo "      <td>\n";
  echo "        ".nl2br($descr)."\n";
  echo "      </td>\n";
  echo "    </tr>\n";
  echo "  </table>\n";
?>