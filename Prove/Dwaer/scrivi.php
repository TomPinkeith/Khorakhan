<html>
  <head>
    <title>
      Iserisci commento
    </title>
  </head>
  <body>
    <center>
      <? include "messaggi.txt"; ?>
      <hr>
      <hr>
      <br>
      <form action="inserisci.php" method="post">
        Nome:
        <br>
        <input type="text" name="autore">
        <br>
        <br>
        Commento:
        <br>
        <textarea rows="10" cols="50" name="commento"></textarea>
        <br>
        <br>
        Url:
        <br>
        <input type="text" name="url">
        <br>
        <br>
        <input type="submit" value="Invia!">
      </form>
    </center>
  </body>
</html>
