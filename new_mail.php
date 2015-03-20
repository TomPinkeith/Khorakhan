<? session_start(); ?>
<html>
  <title>
    Nuovo messaggio
  </title>
  <? include "head.htm"; ?>
    <center>
      <form action="insert_mail.php" method="post">
        Destinatario: 
        <select name="destinatario" length="30">
          <option>Seleziona destinatario</option>
<?
  include "funzioni.php";
  if (! $apri) {
    die("Non hai effettuato il login!!!");
  }

  accedi_db();

  $query1 = "SELECT nome FROM personaggi ORDER BY nome ASC";

  $passo1 = mysql_query($query1);

  if (isset($_GET['to'])) {
    $to = $_GET['to'];
  } else {
    $to = "";
  }

  while (list($nomi) = mysql_fetch_array($passo1)) {
    if ($nomi == $to) {
      echo "          <option selected>$nomi</option>\n";
    } else {
      echo "          <option>$nomi</option>\n";
    }
  }
?>
        </select>
        <br>
        <br>
        Oggetto: 
        <?
          if(isset($_GET['ogg'])) {
            $obj = $_GET['ogg'];
            if (substr($obj, 0, 3) == "R: ") {
              $obj = substr_replace($obj, "", 0, 3);
            }
            echo "        <input type=\"text\" length=\"30\" name=\"oggetto\" value=\"R: $obj\">\n";
          } else {
            echo "        <input type=\"text\" length=\"30\" name=\"oggetto\">\n";
          }
        ?>
        <br>
        Messaggio:
        <br>
        <textarea name="testo" rows="10" cols="50"></textarea>
        <br>
        <br>
        <input type="submit" value="Invia khoramail!">