<title> Descrizione razze </title>
<?
  include "funzioni2.php";

  accedi_db();

  $query = "SELECT razza FROM razze";

  $passo1 = mysql_query($query);

  echo "<html>\n<body background=\"sfondo.jpg\" link=\"blue\" alink=\"blue\" vlink=\"blue\">\n";

  echo "<center>\n  <h1>\n    RAZZE\n  </h1>\n";

  while (list($nome) = mysql_fetch_array($passo1)) {
    echo "  <a href=\"razza.php?razza=$nome&tipo=razze&campo=razza\">\n";
    echo "    $nome\n";
    echo "  </a>\n  <br>\n";
  }

  $query = "SELECT archetipo FROM archetipi";

  $passo1 = mysql_query($query);

  echo "  <br>\n  <hr>\n  <h1>\n    ARCHETIPI\n  </h1>\n";

  while (list($nome) = mysql_fetch_array($passo1)) {
    if ($nome != "Nessuno") {
      echo "  <a href=\"razza.php?razza=$nome&tipo=archetipi&campo=archetipo\">\n";
      echo "    $nome\n";
      echo "  </a>\n  <br>\n";
    }
  }
?>