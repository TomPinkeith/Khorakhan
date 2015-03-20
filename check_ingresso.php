<?
  session_start();

  $nome = $_POST['khoraname'];
  $pass = $_POST['khorapass'];

  $_SESSION['nome'] = $nome;
  $_SESSION['pass'] = $pass;

  include("funzioni.php");
  if (! $apri) {
    die("Non hai effettuato il login!!!");
  }

  $domanda = check_PG($nome, $pass);

  $data = time();

  if ($domanda == "TRUE") {
    $query = "SELECT nome, pass FROM personaggi WHERE nome=\"$nome\"";
    list ($nome, $pass) = mysql_fetch_array(mysql_query($query));

    $_SESSION['nome'] = $nome;
    $_SESSION['pass'] = $pass;

    $data = time();

    $query = "INSERT INTO entrate (data, nome, ip) VALUES ($data, \"$nome\", \"$REMOTE_ADDR\")";
    mysql_query($query);

    echo "<meta http-equiv=\"refresh\" content=\"0; url=accesso.php\">\n";
  } else {
    echo "<meta http-equiv=\"refresh\" content=\"0; url=ingresso.htm\">\n";
  }
?>
</script>