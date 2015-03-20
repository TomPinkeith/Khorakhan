<?
  session_start();

  include("funzioni.php");
  if (! $apri) {
    die("Non hai effettuato il login!!!");
  }

  echo "<html>\n";

  accedi_db();

  if (isset($_GET['room'])) {
    $room = $_GET['room'];
    if ($room == "set") {
      $cod = $_POST['code'];
      $cod = "PRIVATA: "."$cod";
      $nome = $_SESSION['nome'];
    } else {
      $cod = "TAVERNA PUBBLICA";
      $nome = $_SESSION['nome'];
    }

    $query = "UPDATE personaggi SET stanza=\"$cod\" WHERE nome=\"$nome\"";
    mysql_query($query);

    echo "<frameset rows=\"*,60\" cols=\"*\" noresize border=0>\n";
    echo "  <frame src=\"chat.php?agg=si\" noresize>\n";
    echo "  <frame src=\"parla.htm\" noresize scrollbars=no>\n";
    echo "</frameset>\n";
  } else {

    echo "<body link=\"blue\" alink=\"blue\" vlink=\"blue\" background=\"sfondo.jpg\">\n";
    echo "<h2>\n";
    echo "<center>\n";
    echo "  Benvenuto alla taverna!\n  <br>\n";
    echo "  Se vuoi puoi accedere alla <a href=\"taverna.php?room=ciao\">taverna</a>\n";
    echo "  <br>\n  <br>\n  Oppure puoi accedere ad una delle stanze private:\n";
    echo "  <br>\n  inserisci il codice della stanza e clicka su \"Entra\"\n  <br>\n";
    echo "  <form method=\"post\" action=\"taverna.php?room=set\">\n";
    echo "    <input type=\"text\" name=\"code\" length=10>\n";
    echo "    <br>\n";
    echo "    <input type=\"submit\" value=\"Entra\">\n";
    echo "  </form>\n";
  }