<?
  session_start();

  include("funzioni.php");
  if (! $apri) {
    die("Non hai effettuato il login!!!");
  }

  $id = $_GET['id'];
  $nome = $_SESSION['nome'];

  accedi_db();

  $query_1 = "SELECT nome, descrizione, costo FROM oggetti WHERE id=$id";
  $passo_1 = mysql_query($query_1);
  list($obj, $descr, $costo) = mysql_fetch_array($passo_1);

  $query_2 = "SELECT monete FROM personaggi WHERE nome=\"$nome\"";
  $passo_2 = mysql_query($query_2);
  list($mon) = mysql_fetch_array($passo_2);

  if ($costo <= $mon) {
    $query_3 = "INSERT INTO acquisti (giocatore, oggetto, descr, costo, venditore) VALUES (\"$nome\", \"$obj\", \"$descr\", $costo, \"Mercante\")";
    $passo_3 = mysql_query($query_3);

    $newmon = $mon-$costo;
    $query_4 = "UPDATE personaggi SET monete=$newmon WHERE nome=\"$nome\"";
    $passo_4 = mysql_query($query_4);

    $now = time();
    $query_5 = "INSERT INTO scambi (DATA, pagante, ricevente, quota, motivo) VALUES ($now, \"$nome\", \"Mercante\", $costo, \"Acquisto $obj\")";
    $passo_5 = mysql_query($query_5);

    echo "<meta http-equiv=\"refresh\" content=\"3; url=javascript:history.back()\">";
    echo "<body background=\"sfondo.jpg\">";
    echo "<center><h1><b>Acquisto effettuato!!</b></h1></center>\n";
  } else {
    echo "<meta http-equiv=\"refresh\" content=\"3; url=javascript:history.back()\">";
    echo "<body background=\"sfondo.jpg\">";
    echo "<center><h1><b>Non hai abbastanza soldi</b></h1></center>\n";
  }