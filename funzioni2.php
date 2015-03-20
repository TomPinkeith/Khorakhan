<?
  // Carica i dati del database
  include("db.conf.php");

  // Apre la connessione a MySQL e seleziona il database
  function accedi_db() {
    include("db.conf.php");
    $db = mysql_connect($db_host, $db_user, $db_pass);
    mysql_select_db($db_name, $db);
  }
?>