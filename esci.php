<?
  session_start();

  include "funzioni.php";
  if (! $apri) {
    die("Non hai effettuato il login!!!");
  }

  $nome = $_SESSION['nome'];

  $data = time();
  $data1 = time() - 400;

  $query1 = "UPDATE personaggi SET ultimo_accesso=$data1 WHERE nome=\"$nome\"";
  $query2 = "INSERT INTO entrate (data, nome, che) VALUES ($data, \"$nome\", 1)";

  accedi_db();

  mysql_query($query1);
  mysql_query($query2);

  $_SESSION['nome'] = NULL;
  $_SESSION['pass'] = NULL;
?>
<title>
  Arrivederci a presto!
</title>
<body background="sfondo.jpg">
<h1>
  <center>
    Arrivederci a presto!
  </center>