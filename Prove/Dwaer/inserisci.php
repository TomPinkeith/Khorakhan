<meta http-equiv="refresh" content="3; url=scrivi.php">
<?
  $testo = $_POST['commento'];
  $autore = $_POST['autore'];
  $url = $_POST['url'];

  $testo = stripslashes($testo);
  $testo = str_replace(array("<", ">"), array("&lt", "&gt"), $testo);
  $toins = "$autore scrive:<br> ".nl2br($testo)."";

  if ($url != "") {
    $toins = $toins."<br> <a href=\"$url\">$url</a><hr>\n";
  } else {
    $toins = $toins."<hr>\n";
  }

  if ($autore == "") {
    die("<center><h1>Non hai inserito il tuo nome<br>Attendi qualche secondo...</h1></center>");
  }

  if ($testo == "") {
    die("<center><h1>Non hai inserito un commento<br>Attendi qualche secondo...</h1></center>");
  }

  $file = fopen("messaggi.txt", "a");
  fwrite($file, $toins);

  echo "<center><h1>Inserimento avvenuto correttamente<br>Attendi qualche secondo...</h1></center>";
?>