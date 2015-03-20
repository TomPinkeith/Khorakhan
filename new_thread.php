<?
  session_start();
  include "funzioni.php";
  if (! $apri) {
    die("Non hai effettuato il login!!!");
  }

  $forum = $_GET['dove'];

  $name = $_SESSION['nome'];

  accedi_db();

  if ($forum == 0) {
    $query = "SELECT permessi FROM personaggi WHERE nome=\"$name\"";
    $passo1 = mysql_query($query);
    list($perm) = mysql_fetch_array($passo1);
    if ($perm <= 6) {
      die("Sezione riservata");
    }
  }
?>
<html>
  <head>
    <title>
      Forum - Inserisci thread
    </title>
  </head>
  <body background="sfondo.jpg">
    <?
      echo "<form action=\"insert_thread.php?ind=".$forum."\" method=\"POST\">\n";
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
        Titolo:
        <br>
        <input type="text" name="titolo">
        <br>
        <br>
        Testo:
        <br>
        <textarea rows="10" cols="50" name="testo"></textarea>
        <br>
        <br>
        <input type="submit" value="Inserisci">
        <input type="button" value="Indietro" onClick="javascript:history.back()">
      </center>