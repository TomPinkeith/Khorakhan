<?
  session_start();

  include "funzioni.php";
  if (! $apri) {
    die("Non hai effettuato il login!!!");
  }

  $nome = $_SESSION['nome'];
?>
<html>
  <head>
    <title>
      Lavori
    </title>
  </head>
  <body background="sfondo.jpg" link="blue" vlink="blue" alink="blue">
    <center>
      <font size=5>
        <b>
          Lavori<br><br>
        </b>
      </font>
    </center>
    <hr>
      <font size=3>
        L'ufficio di collocamento offre ai cittadini una lista di lavori, onde permettere a coloro che non hanno rendita fissa di poter guadagnare una cifra di denaro sufficiente a sotentarsi.
        <br>
        Ad ogni cittadino è permesso lavorare una volta ogni 24 ore, lavori extra non possono essere scelti da questa lista.
      </font>
      <hr>
    <?
      accedi_db();

      $ora = time()-86400;

      $query0 = "SELECT ora FROM lavoratori WHERE lavoratore=\"$nome\" ORDER BY ora DESC";
      $passo0 = mysql_query($query0);

      list($quando) = mysql_fetch_array($passo0);

      if ($quando >= $ora) {
        die("<font color=\"blue\" size=4>Hai già lavorato nelle ultime 24 ore</font>\n");
      }
    ?>
    <table width=75% border=1 align=center bordercolor=000000 cellspacing=0 bgcolor=eacda3 cellpadding=5>
      <tr>
        <td align=center width=30% bgcolor=ffffff>
          <font color=red>
            <b>Lavoro</b>
          </font>
        </td>
        <td align=center width=50% bgcolor=ffffff>
          <font color=red>
            <b>Descrizione</b>
          </font>
        </td>
        <td align=center width=10% bgcolor=ffffff>
          <font color=red>
            <b>Paga</b>
          </font>
        </td>
        <td align=center width=10% bgcolor=ffffff>
          <font color=red>
            <b>Accetta</b>
          </font>
        </td>
      </tr>
      <?
        $query1 = "SELECT * FROM lavori ORDER BY lavoro ASC";
        $passo1 = mysql_query($query1);

        while (list($id, $lav, $desc, $paga, $num) = mysql_fetch_array($passo1)) {
          $query2 = "SELECT id FROM lavoratori WHERE lavoro=\"$lav\" AND ora > $ora";
          $passo2 = mysql_query($query2);

          $desc = nl2br($desc);
          $paga = number_format($paga, 2, ",", "'");
          $usati = 0;

          while (list($id2) = mysql_fetch_array($passo2)) {
            $usati++;
          }
          if ($num > $usati) {
            echo "      <tr>\n";
            echo "        <td align=center>\n";
            echo "          $lav\n";
            echo "        </td>\n";
            echo "        <td>\n";
            echo "          $desc\n";
            echo "        </td>\n";
            echo "        <td align=center>\n";
            echo "          $paga\n";
            echo "        </td>\n";
            echo "        <td align=center>\n";
            echo "          <a href=\"lavora.php?lav=$id\">Lavora</a>\n";
            echo "        </td>\n";
            echo "      </tr>\n";
          }
        }
      ?>
    </table>