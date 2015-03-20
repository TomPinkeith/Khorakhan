<?
  session_start();

  include "funzioni.php";
  if (! $apri) {
    die("Non hai effettuato il login!!!");
  }

  $nome = $_SESSION['nome'];
  $pass = $_SESSION['pass'];

  $data = time();

  echo "<html>\n";
  echo "  <head>\n";
  echo "    <title>\n";
  echo "      Khorakhan: bentornato "."$nome\n";
  echo "    </title>\n";
  echo "  </head>\n";
  echo "  <frameset cols=\"200,*\" rows=\"*\" border=0>\n";
  echo "    <frameset cols=\"*\" rows=\"170,290,*\" border=0>\n";
  echo "      <frame src=\"time.php\" noresize scrolling=no>\n";
  echo "      <frame src=\"personale.php\" noresize scrolling=no>\n";
  echo "      <frame src=\"leftdown.htm\" noresize>\n";
  echo "    </frameset>\n";
  echo "    <frameset cols=\"*\" rows=\"70,*\" border=0>\n";
  echo "      <frame src=\"posizione.php\" noresize scrolling=no name="posizione">\n";
  echo "      <frame src=\"main.php?chg=100\" noresize name=\"main\">\n";
  echo "    </frameset>\n";
  echo "  </frameset>\n";
  echo "</html>\n";
?>