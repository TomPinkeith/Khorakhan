<?
  session_start();
  include "funzioni.php";
  if (! $apri) {
    die("Non hai effettuato il login!!!");
  }

  $name = $_SESSION['nome'];

  $bacheca = $_GET['ind'];

  accedi_db();

  $query2 = "SELECT nome, perm_lettura, perm_scrittura, perm_categoria, descrizione FROM forum WHERE id = $bacheca";
  $passo2 = mysql_query($query2);
  list($forum, $perm_lett, $perm_scrit, $cat, $descrx) = mysql_fetch_array($passo2);
?>
<html>
  <head>
    <title>
      Forum
    </title>
  </head>
  <body background="sfondo.jpg" link="blue" alink="blue" vlink="blue">
    <center>
      <h1>
        <? echo "$forum\n"; ?>
      </h1>
      <table align="center" border=0>
        <tr>
          <td>
      <?
        $query = "SELECT permessi, cognome, gilda FROM personaggi WHERE nome=\"$nome\"";
        $passo = mysql_query($query);
        list($perm, $cogn, $gilda) = mysql_fetch_array($passo);

        if ($perm_lett > $perm AND $cogn != $cat AND $gilda != $cat) {
          die("Sezione riservata!!!");
        }

        if ($perm_scrit <= $perm) {
          echo "      <form action=\"new_thread.php?dove=$bacheca\" method=\"post\">\n";
          echo "        <input type=\"submit\" value=\"Inserisci thread\">\n";
          echo "      </form>\n";
        }
      ?>
          </td>
          <td>
            <form action="forum.php" method="post">
              <input type="submit" value="Torna indietro">
            </form>
          </td>
        </tr>
      </table>
      <hr>
    </center>
    <table align="center" width="75%" border=1 bordercolor=000000 cellspacing=0 bgcolor=eacda3 cellpadding=5>
      <tr>
        <td width="40%" align="center" bgcolor=ffffff>
          <font color="red"><b>TITOLO
        </td>
        <td width="10%" align="center" bgcolor=ffffff>
          <font color="red"><b>RISPOSTE
        </td>
        <td width="20%" align="center" bgcolor=ffffff>
          <font color="red"><b>AUTORE
        </td>
        <td width="30%" align="center" bgcolor=ffffff>
          <font color="red"><b>ULTIMA MODIFICA
        </td>
      </tr>
    <?
      $query = "SELECT titolo, id, data_ultima, autore FROM threads WHERE forum=$bacheca ORDER BY data_ultima DESC";
      $passo1 = mysql_query($query);
      while(list($titolo, $id, $data, $autore) = mysql_fetch_array($passo1)) {
        $query2 = "SELECT titolo FROM posts WHERE thread=$id";
        $passo2 = mysql_query($query2);
        $risp = 0;
        while (list($tit) = mysql_fetch_array($passo2)) {
          $risp++;
        }
        echo "      <tr>\n";
        echo "        <td>\n";
        echo "          <h3><a href=\"vedi_post.php?ind=$id&ind2=$bacheca\">$titolo</a>\n";
        echo "        </td>\n";
        echo "        <td align=\"center\">\n";
        echo "          $risp\n";
        echo "        </td>\n";
        echo "        <td align=\"center\">\n";
        echo "          <b>$autore\n";
        echo "        </td>\n";
        echo "        <td align=\"center\">\n";
        echo "          <b>".date("d - n - Y  H:i", $data)."\n";
        echo "        </td>\n";
        if ($perm >= 7) {
          echo "        <td width=5%>\n";
          echo "          <a href=\"elimina_thread.php?id=$id\">Elimina</a>\n";
          echo "        </td>\n";
        }
        echo "      </tr>\n";
      }
    ?>
    </table>
    <br>
    <br>
    <table align=center width=50% border=0 bgcolor=c1ae86 cellpadding=4>
      <tr>
        <td>
          <? echo "".nl2br($descrx)."\n"; ?>
        </td>
      </hr>
    </table>
  </body>
</html>