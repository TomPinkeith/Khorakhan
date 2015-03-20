<html>
<title> Descrizione classi </title>
<?
  include "funzioni2.php";

  accedi_db();

  $query = "SELECT classe FROM classi";

  $passo1 = mysql_query($query);

  echo "<body background=\"sfondo.jpg\" link=\"blue\" alink=\"blue\" vlink=\"blue\">\n";

  echo "<center>\n  <h1>\n    CLASSI\n  </h1>\n";

  while (list($nome) = mysql_fetch_array($passo1)) {
    echo "  <a href=\"classe.php?classe=$nome\">\n";
    echo "    $nome\n";
    echo "  </a>\n  <br>\n";
  }
?>