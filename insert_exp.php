<?
  session_start();
  
  include "funzioni.php";
  if (! $apri) {
    die("Non hai effettuato il login!!!");
  }

for ($i=1;$i<6;$i++) {
  $ric = $_POST['ricevente'.$i];
  $ass = $_SESSION['nome'];
  $pun = $_POST['px'.$i];
  $mot = $_POST['motivo'.$i];
  if ($ric == "Seleziona destinatario"){
    die("<meta http-equiv=\"refresh\" content=\"0; url=exp.php\">\n <body>");
  }
  $dat = time();
  
  $query = "INSERT INTO esperienza (data, master, giocatore, quantità, motivo) VALUES ($dat, \"$ass\", \"$ric\", $pun, \"$mot\")";
  
  accedi_db();
  
  mysql_query($query);
}
?>
<meta http-equiv="refresh" content="0; url=exp.php">