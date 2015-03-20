<?
  session_start();

  include "funzioni.php";
  if (! $apri) {
    die("Non hai effettuato il login!!!");
  }

  accedi_db();

  $name = $_SESSION['nome'];

  $query = "SELECT permessi FROM personaggi WHERE nome=\"$name\"";

  $passo1 = mysql_query($query);

  list($perm) = mysql_fetch_array($passo1);

  if ($perm <=6) {
    die("Sezione riservata");
  }
?>
<title>Amministrazione</title>
<body link="blue" vlink="blue" alink="blue" background="sfondo.jpg">
  <script language="Javascript">
    self.moveTo(0,screen.availHeight/2);
    self.resizeTo(screen.availWidth,screen.availHeight/2);
  </script>
<form action="cambia_perm.php" method="post">
  Assegna permessi:
  <br>
  <select name="cambiato">
    <option>Seleziona personaggio</option>
    <?
      $query1 = "SELECT nome FROM personaggi ORDER BY nome ASC";

      $passo1 = mysql_query($query1);

      while (list($nomi) = mysql_fetch_array($passo1)) {
        echo "            <option>$nomi</option>\n";
      }
    ?>
  </select>
  <select name="permessi">
    <option>Seleziona i permessi</option>
    <option>ESPULSO</option>
    <option>BLOCCATO</option>
    <option>MORTO</option>
    <option>CITTADINO</option>
    <option>APPRENDISTA</option>
    <option>MAESTRO</option>
    <?
      if ($perm >= 8) {
        echo "    <option>AMMINISTRATORE</option>\n";
        echo "    <option>PROGRAMMATORE</option>\n";
        echo "    <option>PROGRAMMATORE-MASTER</option>\n";
      }
    ?>
  </select>
  <input type="submit" value="Imposta!">
</form>

<form action="carica.php" method="post">
  Assegna carica:
  <br>
  <select name="incaricato">
    <option>Seleziona personaggio</option>
    <?
      $query1 = "SELECT nome FROM personaggi ORDER BY nome ASC";

      $passo1 = mysql_query($query1);

      while (list($nomi) = mysql_fetch_array($passo1)) {
        echo "            <option>$nomi</option>\n";
      }
    ?>
    <input type="text" name="carica">
  </select>
  <input type="submit" value="Assegna!">
</form>

<form action="avviso.php" method="post">
  Inserisci avviso:
  <br>
  <input type="text" name="messaggio" size="80">
  <input type="submit" value="Invia">
  <br>
  Il messaggio apparirà su tutte le chat, come se fosse scritto da Itzamna. Per rimuoverlo utilizzare clearallchat. Verrà rimossa l'intera schermata.
</form>