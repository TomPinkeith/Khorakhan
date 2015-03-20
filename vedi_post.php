<?
  session_start();
  include "funzioni.php";
  if (! $apri) {
    die("Non hai effettuato il login!!!");
  }

  $name = $_SESSION['nome'];

  $thread = $_GET['ind'];

  $bache = $_GET['ind2'];

  accedi_db();

  $query = "SELECT titolo, forum, chiuso FROM threads WHERE id=$thread";
  $passo1 = mysql_query($query);
  list($thr, $bacheca, $chiuso) = mysql_fetch_array($passo1);
?>
<html>
  <head>
    <title>
      Forum
    </title>
  <script language="Javascript">
    self.moveTo(0,0);
    self.resizeTo(screen.availWidth,screen.availHeight);
  </script>
  </head>
  <body background="sfondo.jpg" link="blue" alink="blue" vlink="blue">
    <center>
      <h1>
        <? echo "$thr\n"; ?>
      </h1>
      <table align="center" border=0>
        <tr>
          <td>
      <?
        $query = "SELECT permessi FROM personaggi WHERE nome=\"$name\"";
        $passo1 = mysql_query($query);
        list($perm) = mysql_fetch_array($passo1);

        $query2 = "SELECT perm_scrittura FROM forum WHERE id=$bache";
        $passo2 = mysql_query($query2);
        list($perm_scrit) = mysql_fetch_array($passo2);

        if ($perm_scrit <= $perm) {
          if ($chiuso != 1) {
            echo "            <form action=\"new_post.php?dove=$thread\" method=\"post\">\n";
            echo "              <input type=\"submit\" value=\"Inserisci post\">\n";
            echo "            </form>\n";
            echo "            </td>\n";
          }
        }

        if ($perm >= 7) {
          echo "            <td>\n";
          echo "            <form action=\"close_forum.php?dove=$thread&ind2=$bache\" method=\"post\">\n";
          echo "              <input type=\"submit\" value=\"Chiudi thread\">\n";
          echo "            </form>\n";
          echo "            </td>\n";
        }
      ?>
          </td>
          <td>
<? echo "            <form action=\"vedi_forum.php?ind=$bache\" method=\"post\">\n"; ?>
              <input type="submit" value="Torna indietro">
            </form>
          </td>
        </tr>
      </table>
      <hr>
    </center>
    <table align="center" width="75%" border=1 bordercolor=000000 cellspacing=0 bgcolor=eacda3 cellpadding=5>
    <?
      $query = "SELECT testo, id, data, autore FROM posts WHERE thread=$thread ORDER BY data DESC";
      $passo1 = mysql_query($query);
      while(list($testo, $id, $data, $autore) = mysql_fetch_array($passo1)){
        $testo = nl2br(chat2(bui(nohtml($testo)),3));
        echo "      <tr>\n";
        echo "        <td width=\"30%\" bgcolor=ffffff>\n";
        echo "          $autore\n";
        echo "        </td>\n";
        echo "        <td width=\"70%\" bgcolor=ffffff>\n";
        echo "          ".date("d - n - Y  H:i", $data)."\n";
        echo "        </td>\n";
        if ($perm >= 7) {
          echo "        <td width=5% bgcolor=ffffff>\n";
          echo "          <a href=\"elimina_post.php?id=$id\">Elimina</a>\n";
          echo "        </td>\n";

          echo "      </tr>\n";
          echo "      <tr>\n";
          echo "        <td width=\"100%\" colspan=3>\n";
          echo "          <br>$testo<br><br>\n";
          echo "        </td>\n";
          echo "      </tr>\n";
        } else {
          echo "      </tr>\n";
          echo "      <tr>\n";
          echo "        <td width=\"100%\" colspan=2>\n";
          echo "          <br>$testo<br><br>\n";
          echo "        </td>\n";
          echo "      </tr>\n";
        }
      }
    ?>
    </table>
    <br>
    <hr>
    <br>
    <center>
    <?
      echo "      <form action=\"segnala_thread.php?ind=$thread&ind2=$bache\" method=\"post\">\n";
    ?>
        Segala questo thread a: 
        <br>
        <select name="dest1" length="30">
          <option>Seleziona destinatario</option>
    <?
      $query2 = "SELECT nome FROM personaggi ORDER BY nome ASC";
      $passo2 = mysql_query($query2);
      while (list($name) = mysql_fetch_array($passo2)) {
        echo "          <option>$name</option>\n";
      }
    ?>
        </select>
        <br>
        <select name="dest2" length="30">
          <option>Seleziona destinatario</option>
    <?
      $query2 = "SELECT nome FROM personaggi ORDER BY nome ASC";
      $passo2 = mysql_query($query2);
      while (list($name) = mysql_fetch_array($passo2)) {
        echo "          <option>$name</option>\n";
      }
    ?>
        </select>
        <br>
        <select name="dest3" length="30">
          <option>Seleziona destinatario</option>
    <?
      $query2 = "SELECT nome FROM personaggi ORDER BY nome ASC";
      $passo2 = mysql_query($query2);
      while (list($name) = mysql_fetch_array($passo2)) {
        echo "          <option>$name</option>\n";
      }
    ?>
        </select>
        <br>
        <select name="dest4" length="30">
          <option>Seleziona destinatario</option>
    <?
      $query2 = "SELECT nome FROM personaggi ORDER BY nome ASC";
      $passo2 = mysql_query($query2);
      while (list($name) = mysql_fetch_array($passo2)) {
        echo "          <option>$name</option>\n";
      }
    ?>
        </select>
        <br>
        <select name="dest5" length="30">
          <option>Seleziona destinatario</option>
    <?
      $query2 = "SELECT nome FROM personaggi ORDER BY nome ASC";
      $passo2 = mysql_query($query2);
      while (list($name) = mysql_fetch_array($passo2)) {
        echo "          <option>$name</option>\n";
      }
    ?>
        </select>
        <br>
        <input type="submit" value="Segnala!">
      </form>
    </center>
  </body>
</html>