<?
  session_start();

  include "funzioni.php";
  if (! $apri) {
    die("Non hai effettuato il login!!!");
  }
  accedi_db();

  $pag = $_SESSION['nome'];
  $ric = $_POST['destinatario'];
  $cifra = $_POST['quota'];
  $causale = $_POST['motivo'];
  $data = time();

  $query = "SELECT monete FROM personaggi WHERE nome=\"$pag\"";
  list($prima) = mysql_fetch_array(mysql_query($query));

  $cifra = abs($cifra);

  if ($prima < $cifra) {
    die("Non avete abbastanza denaro");
  }

  $adesso = $prima - $cifra;  if ($ric == "Seleziona destinatario"){
    die("<meta http-equiv=\"refresh\" content=\"2; url=profilo_pers_mon.php\">\n Seleziona un destinatario");
  }

  $query = "UPDATE personaggi SET monete=$adesso WHERE nome=\"$pag\"";
  mysql_query($query);

  $query = "SELECT monete FROM personaggi WHERE nome=\"$ric\"";
  $passo1 = mysql_query($query);
  list($prima) = mysql_fetch_array($passo1);

  $adesso = $prima + $cifra;

  $query = "UPDATE personaggi SET monete=$adesso WHERE nome=\"$ric\"";
  mysql_query($query);

  $query = "INSERT INTO scambi (data, pagante, ricevente, quota, motivo) VALUES ($data, \"$pag\", \"$ric\", $cifra, \"$causale\")";
  mysql_query($query);

  echo "<meta http-equiv=\"refresh\" content=\"0; url=profilo_pers_mon.php\">\n";
  echo "Transazione avvenuta";
?>