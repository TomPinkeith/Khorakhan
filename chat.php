<?
  session_start();
  include "funzioni.php";
  if (! $apri) {
    die("Non hai effettuato il login!!!");
  }

  accedi_db();

  $nome = $_SESSION['nome'];

  $query = "SELECT stanza FROM personaggi WHERE nome=\"$nome\"";
  $passo1 = mysql_query($query);
  list($stanza, $stesso) = mysql_fetch_array($passo1);

  $agg = $_GET['agg'];
?>
<html>
<?
  if ($agg == 0) {
    echo "<meta http-equiv=\"refresh\" content=4>\n";
  }
?>
<head>
<script language='javascript'>
  function profilo(chi) {
    window.open('vedi_profilo.php?id='+chi,'','toolbar=0,menubar=0,directories=0,location=0,scrollbars=1,status=0,resizable=1')
    document.location.href="chat.php?agg=0";
  }
</script>
</head>
<?
  echo "<body background=\"sfondo.jpg\" link=\"#660000\" alink=\"#660000\" vlink=\"#660000\">\n";
  echo "<b>\n";

  if (! inc_not($nome)) {
    die();
  }
  if ($agg == 0) {
    echo "<form action=\"chat.php?agg=1\" method=\"post\">\n";
    echo "<input type=\"submit\" value=\"Ferma chat\">\n";
  } else {
    echo "<form action=\"chat.php?agg=0\" method=\"post\">\n";
    echo "<input type=\"submit\" value=\"Riavvia chat\">\n";
  }

  echo "</form>\n";

  echo "<br>\n";
  echo "<br>\n";

  $oggi = number_format(time()/86400, 0) * 86400;

  $query = "SELECT data, autore, messaggio, idaut, luogo FROM chat WHERE luogo=\"$stanza\" OR luogo=\"ALL\" OR luogo=\"$stanza".":"."$nome\" ORDER BY data DESC LIMIT 0,30";
  $passo1 = mysql_query($query);

  $i = 1;

  for ($i = 1; $i <= 43; $i++) {
    if (list($data, $autore, $mess, $idaut, $luogo) = mysql_fetch_array($passo1)) {
      $query = "SELECT permessi, classe, sesso FROM personaggi WHERE id=$idaut";
      list($perm, $classe, $sex) = mysql_fetch_array(mysql_query($query));
      if ($oggi <= $data) {
        $data = date("H:i", $data);
        if ($luogo == "$stanza".":"."$nome") {
          $mess = chat2(nohtml($mess), 2);
          echo "<font color=\"gray\" size=3>"."$data"."</font><font color=\"black\" size=3>"." - "."<a href=\"javascript:profilo($idaut);\"";
          if ($sex == "M") {
            echo "style=color:#3333CC";
          } else {
            echo "style=color:#CC3399";
          }
          echo ">"."$autore</a>"."$mess<br>\n";
        } else {
          if ($perm == 2 OR $perm == 3 OR $perm == 4) {
            $mess = chat2(nohtml($mess), 1);
            echo "<font color=\"gray\" size=3>"."$data"."</font><font color=\"black\" size=3>"." - "."<a href=\"javascript:profilo($idaut);\"";
            if ($sex == "M") {
              echo " style=color:3333CC";
            } else {
              echo " style=color:CC3399";
            }
            echo ">"."$autore</a>"."$mess<br>\n";
          }
          if ($perm == 5) {
            if (substr($mess, 0, 3) == "###") {
              $mess = substr($mess, 3);
              echo "<font size=1><br></font>\n<table border=0 bgcolor=green cellpadding=4 width=100% align=center>\n  <tr>\n    <td align=center>\n      <font color=white size=3><b>". str_replace( array("[", "]"), array(" - <I>", "</I> - "), $mess) ."</b></font><br>\n    </td>\n  </tr>\n</table>\n<font size=1><br></font>\n";
            } else {
              $mess = chat2(nohtml($mess), 1);
              echo "<font color=\"gray\" size=3>"."$data"."</font><font color=\"black\" size=3>"." - "."<a href=\"javascript:profilo($idaut);\"";
              if ($sex == "M") {
                echo " style=color:3333CC";
              } else {
                echo " style=color:CC3399";
              }
              echo ">"."$autore</a>"."$mess<br>\n";
            }
          }
          if ($perm == 6) {
            if ($mess == "clearthischat" OR $mess == "clearallchat") {
              $i = 45;
            } else {
              $mess = chat2($mess, 4, $autore);
              echo "$mess<br>\n";
            }
          }
          if ($perm == 7 OR $perm == 8) {
            if ($mess == "clearthischat" OR $mess == "clearallchat") {
              $i = 45;
            } else {
              if (substr($mess, 0, 3) == "###") {
                $mess = substr($mess, 3);
                echo "<font size=1><br></font>\n<table border=0 bgcolor=green cellpadding=5 width=95% align=center>\n  <tr>\n    <td align=center>\n      <font size=1><br></font><font color=white size=4> $mess </font><br><font size=1><br></font>\n    </td>\n  </tr>\n</table>\n<font size=1><br></font>\n";
              } else {
                $mess = chat2($mess, 1);
                echo "<font color=gray size=3>"."$data"."</font><font color=black size=3>"." - "."<a href=\"javascript:profilo($idaut);\"";
                if ($sex == "M") {
                  echo " style=color:3333CC";
                } else {
                  echo " style=color:CC3399";
                }
                echo ">"."$autore</a>"."$mess<br>\n";
              }
            }
          }
          if ($perm == 9) {
            if ($mess == "clearthischat" OR $mess == "clearallchat") {
              $i = 45;
            } else {
              if (substr($mess, 0, 3) == "###") {
                $mess = substr($mess, 3);
                echo "<font size=1><br></font>\n<table bgcolor=\"green\" border=0 width=95% align=center cellpadding=5>\n  <tr>\n    <td align=center>\n      <font size=1><br></font><font color=\"white\" size=4> $mess </font><br><font size=1><br></font>\n    </td>\n  </tr>\n</table>\n<font size=1><br></font>\n";
              } else {
                $mess = chat2($mess, 4, $autore);
                echo "$mess<br>\n";
              }
            }
          }  
        }
      } else {
        break;
      }
    }
  }
?>