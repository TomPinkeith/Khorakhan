<?
  session_start();

  include("funzioni.php");
  if (! $apri) {
    die("Non hai effettuato il login!!!");
  }

  $nr = nr_online();

  include "head.htm";
?>
<html>
<center>
<? echo "  Utenti collegati: "."$nr"; ?>
</center>