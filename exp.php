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

  if ($perm <= 4) {
    die("Sezione riservata");
  }
?>
<html>
<body link="blue" vlink="blue" alink="blue" background="sfondo.jpg">
  <script language="Javascript">
    self.moveTo(0,screen.availHeight/2);
    self.resizeTo(screen.availWidth,screen.availHeight/2);
  </script>
<title>Assegna punti esperienza</title>
<center>
  <form action="insert_exp.php" method="POST">
    <table align="center" width="60%">
      <tr>
        <td align="center" width="33%">
          <font color="red"><b>
            Assegna a:
        </td>
        <td align="center" width="33%">
          <font color="red"><b>
            Punti:
        </td>
        <td align="center" width="33%">
          <font color="red"><b>
            Motivo:
        </td>
      </tr>
      <tr>
        <td>
          <select name="ricevente1" length="30">
            <option>Seleziona destinatario</option>
            <?
              accedi_db();

              $query1 = "SELECT nome FROM personaggi ORDER BY nome ASC";

              $passo1 = mysql_query($query1);

              while (list($nomi) = mysql_fetch_array($passo1)) {
                echo "            <option>$nomi</option>\n";
              }
            ?>
          </select>
        </td>
        <td align="center" width="50%">
          <input type="text" name="px1">
        </td>
        <td align="center" width="50%">
          <input type="text" name="motivo1">
        </td>
      </tr>

      <tr>
        <td>
          <select name="ricevente2" length="30">
            <option>Seleziona destinatario</option>
            <?
              accedi_db();

              $query1 = "SELECT nome FROM personaggi ORDER BY nome ASC";

              $passo1 = mysql_query($query1);

              while (list($nomi) = mysql_fetch_array($passo1)) {
                echo "            <option>$nomi</option>\n";
              }
            ?>
          </select>
        </td>
        <td align="center" width="50%">
          <input type="text" name="px2">
        </td>
        <td align="center" width="50%">
          <input type="text" name="motivo2">
        </td>
      </tr>

      <tr>
        <td>
          <select name="ricevente3" length="30">
            <option>Seleziona destinatario</option>
            <?
              accedi_db();

              $query1 = "SELECT nome FROM personaggi ORDER BY nome ASC";

              $passo1 = mysql_query($query1);

              while (list($nomi) = mysql_fetch_array($passo1)) {
                echo "            <option>$nomi</option>\n";
              }
            ?>
          </select>
        </td>
        <td align="center" width="50%">
          <input type="text" name="px3">
        </td>
        <td align="center" width="50%">
          <input type="text" name="motivo3">
        </td>
      </tr>

      <tr>
        <td>
          <select name="ricevente4" length="30">
            <option>Seleziona destinatario</option>
            <?
              accedi_db();

              $query1 = "SELECT nome FROM personaggi ORDER BY nome ASC";

              $passo1 = mysql_query($query1);

              while (list($nomi) = mysql_fetch_array($passo1)) {
                echo "            <option>$nomi</option>\n";
              }
            ?>
          </select>
        </td>
        <td align="center" width="50%">
          <input type="text" name="px4">
        </td>
        <td align="center" width="50%">
          <input type="text" name="motivo4">
        </td>
      </tr>

      <tr>
        <td>
          <select name="ricevente5" length="30">
            <option>Seleziona destinatario</option>
            <?
              accedi_db();

              $query1 = "SELECT nome FROM personaggi ORDER BY nome ASC";

              $passo1 = mysql_query($query1);

              while (list($nomi) = mysql_fetch_array($passo1)) {
                echo "            <option>$nomi</option>\n";
              }
            ?>
          </select>
        </td>
        <td align="center" width="50%">
          <input type="text" name="px5">
        </td>
        <td align="center" width="50%">
          <input type="text" name="motivo5">
        </td>
      </tr>
    </table>
    <input type="submit" value="Assegna!">
  </form>
  <hr>
  <table align="center" width="100%" border=1 bordercolor=000000 cellspacing=0 bgcolor=eacda3 cellpadding=5>
    <tr>
      <td align="center" width="10%" bgcolor=ffffff>
        <font color="red"><b>
          DATA
      </td>
      <td align="center" width="10%" bgcolor=ffffff>
        <font color="red"><b>
          RICEVENTE
      </td>
      <td align="center" width="10%" bgcolor=ffffff>
        <font color="red"><b>
          QUANTITA'
      </td>
      <td align="center" width="10%" bgcolor=ffffff>
        <font color="red"><b>
          ASSEGNATORE
      </td>
      <td align="center" width="30%" bgcolor=ffffff>
        <font color="red"><b>
          MOTIVO
    </tr>
    <?
      $query = "SELECT id, data, giocatore, quantità, motivo, master, fatto FROM esperienza ORDER BY data ASC";
      
      $passo1 = mysql_query($query);
      
      while (list($id, $data, $giocatore, $quantita, $motivo, $master, $fatto) = mysql_fetch_array($passo1)) {
        if ($fatto == 0) {
          echo "    <tr>\n";
          echo "      <td align=\"center\" width=\"10%\">\n";
          echo "        ".date("d - n - Y  H:i", $data)."\n";
          echo "      </td>\n";
          echo "      <td align=\"center\" width=\"10%\">\n";
          echo "        $giocatore\n";
          echo "      </td>\n";
          echo "      <td align=\"center\" width=\"10%\">\n";
          echo "        $quantita\n";
          echo "      </td>\n";
          echo "      <td align=\"center\" width=\"10%\">\n";
          echo "        $master\n";
          echo "      </td>\n";
          echo "      <td align=\"left\" width=\"30%\">\n";
          echo "        $motivo\n";
          echo "      </td>\n";
          if ($perm >= 8) {
            echo "      <td align=\"center\" width=\"10%\">\n";
            echo "        <a href=\"conferma_exp.php?info=$id&come=1\">\n";
            echo "          Conferma\n";
            echo "        </a>\n";
            echo "        <br>\n";
            echo "        <a href=\"conferma_exp.php?info=$id&come=0\">\n";
            echo "          Annulla\n";
            echo "        </a>\n";
            echo "      </td>\n";
          }
          echo "    </tr>\n";
        }
      }
    ?>

            