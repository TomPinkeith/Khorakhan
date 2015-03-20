<?
  session_start();
  include "funzioni.php";
  if (! $apri) {
    die("Non hai effettuato il login!!!");
  }

  $thread = $_GET['dove'];

  $name = $_SESSION['nome'];

  accedi_db();

  if ($thread == 0) {
    $query = "SELECT admin FROM personaggi WHERE nome=\"$name\"";
    $passo1 = mysql_query($query);
    list($vero) = mysql_fetch_array($passo1);
    if ($vero != "TRUE") {
      die("Sezione riservata");
    }
  }
?>
<html>
  <head>
    <title>
      Forum - Inserisci post
    </title>
  </head>
  <body background="sfondo.jpg">
    <?
      echo "<form action=\"insert_post.php?ind=".$thread."\" method=\"POST\">\n";
    ?>
Per inserire testo sottolineato inserire il testo tra [U] e [/U]<br>
Per inserire testo in grassetto inserire il testo tra [B] e [/B]<br>
Per inserire testo in corsivo inserire il testo tra [I] e [/I]<br>
      <center>
        <h1>
        Inserisci thread
        </h1>
        <hr>
        <br>
        Testo:
        <br>
        <textarea rows="10" cols="50" name="testo"></textarea>
        <br>
        <br>
        <input type="submit" value="Inserisci">
        <input type="button" value="Indietro" onClick="javascript:history.back()">
      </center>