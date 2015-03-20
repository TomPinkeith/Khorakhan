<?
  session_start();

  include "funzioni.php";
  if (! $apri) {
    die("Non hai effettuato il login!!!");
  }
  accedi_db();

  $nome = $_SESSION['nome'];

?>
  <html>
  <? include "head.htm"; ?>
  <center>
    <h1>
      <? echo $nome; ?>
    </h1>
    <hr>
      <?
	accedi_db();

        $query = "SELECT pass, mail, hmail, descrizione, storia, notoriety, img , stanza, hid, permessi FROM personaggi WHERE nome=\"$nome\"";

	$passo1 = mysql_query($query);

	list($pass, $mail, $hmail, $descr, $storia, $noto, $img, $dove, $hid, $perm) = mysql_fetch_array($passo1);
      ?>
    
    <form action="profilo_pers_bot_update.php" method="post">
      Password: 
      <br>
      <input type="text" name="pass" value="<? echo $pass; ?>">
      <br>
      Mail:
      <br>
      <input type="text" name="mail" value="<? echo $mail; ?>">
      <br>
      Hotmail:
      <br>
      <input type="text" name="hmail" value="<? echo $hmail; ?>">
      <br>
      <br>
      <hr>
      <table width="75%" align="center">
        <tr>
          <td align="center" width="50%">
            Descrizione:
            <br>
            <textarea name="descrizione" rows=10 cols=30><? echo $descr; ?></textarea>
            <br>
            <br>
            Storia:
            <br>
            <textarea name="storia" rows=10 cols=30><? echo $storia; ?></textarea>
          </td>
          <td align="center" width="50%">
            Immagine
            <br>
            <input type="text" name="foto" value="<? echo $img; ?>">
            <br>
            <br>
            <img src="<? echo $img; ?>" height=300>
          </td>
        </tr>
      </table>
      <br>
      <input type="submit" value="Salva le modifiche!">
    </form>
    <form action="stanza_god.php" method="post">
<?
  if ($perm >= 6) {
    echo "    <hr>\n";
    echo "    <br>\n";
    echo "    Locazione:\n";
    echo "    <br>\n";

    echo "    <input type=\"text\" name=\"locazione\" value=\"";
    if ($hid != "") {
      echo $hid;
    } else {
      echo $stanza;
    }
    echo "\">\n";

    echo "    <br>\n";
    echo "    <input type=\"submit\" value=\"Imposta stanza\">\n";
  }
?>
    </form>

  </body>
</html>