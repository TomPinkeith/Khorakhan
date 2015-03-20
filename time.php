<?
  session_start();
  include("funzioni.php");
  if (! $apri) {
    die("Non hai effettuato il login!!!");
  }

  $new_notoriety = inc_not($nome);
?>
<html>
<meta http-equiv='refresh' content='60'>
<? include "head.htm"; ?>
<center>
  <?
    $tempo = time();
    $giorno = date("d", $tempo);
    $mese = date("n", $tempo);
    $anno = date("Y", $tempo);
    $anno = $anno - 1503;

    echo (longcicle($tempo));
    echo "\n<br>\n";
    echo (tzolkin($tempo));
    echo "\n<br>\n";
    echo (haab($tempo));
    echo "\n<br>\n<br>\n";
    echo (date("H:i", $tempo));
    echo "\n<br>\n";
    echo "<img src=\"fase";
    echo (luna($tempo));
    echo ".jpg\" width=60>";
  ?>
</center>