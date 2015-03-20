<?
  session_start();

  include "funzioni.php";
  if (! $apri) {
    die("Non hai effettuato il login!!!");
  }

  $nome = $_SESSION['nome'];

  accedi_db();

  $pg = $_GET['pg'];

  echo "<html>\n";
  include "head.htm";
?>
  <center>
    <h1>
      <?
        echo $pg;
      ?>
    </h1>
    <hr>
    <?
      $query = "SELECT pass, mail, hmail, descrizione, storia, notoriety, img, stanza FROM personaggi WHERE id=$pg";
	$pass1o1 = mysql_query($query);
	list($pass1, $mail1, $hmail1, $descr1, $storia1, $noto1, $img1, $stanza) = mysql_fetch_array($pass1o1);
    ?>
    
    <form action="profilo_pers_bot_update.php" method="post">
      Password: 
      <br>
      <input type="text" name="pass" value="<? echo $pass1; ?>">
      <br>
      Mail:
      <br>
      <input type="text" name="mail" value="<? echo $mail1; ?>">
      <br>
      Hotmail:
      <br>
      <input type="text" name="hmail" value="<? echo $hmail1; ?>">
      <br>
      Stanza: <? echo $stanza; ?>
      <br>
      <hr>
      <table width="75%" align="center">
        <tr>
          <td align="center" width="50%">
            Descrizione:
            <br>
            <textarea name="descrizione" rows=10 cols=30><? echo $descr1; ?></textarea>
            <br>
            <br>
            Storia:
            <br>
            <textarea name="storia" rows=10 cols=30><? echo $storia1; ?></textarea>
          </td>
          <td align="center" width="50%">
            Immagine
            <br>
            <input type="text" name="foto" value="<? echo $img1; ?>">
            <br>
            <br>
            <img src="<? echo $img1; ?>" height=300>
          </td>
        </tr>
      </table>
    </form>
  </body>
</html>