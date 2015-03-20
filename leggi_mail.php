<?
  session_start();

  include "funzioni.php";
  if (! $apri) {
    die("Non hai effettuato il login!!!");
  }

  accedi_db();

  $mess = $_GET['id'];
  $letta = $_GET['letta'];
  if ($letta == 0) {
    $query2 = "UPDATE khoramail SET letto=1 WHERE id=$mess";

    mysql_query($query2);
  }

  $query1 = "SELECT mittente, data, oggetto, messaggio FROM khoramail WHERE id=$mess";

  $passo1 = mysql_query($query1);

  list($mitt, $data, $obj, $mex) = mysql_fetch_array($passo1);
  $data = date("d/n/Y H:i", $data);
  $mex = nl2br($mex);
?>
<html>
  <head>
    <title>
      Lettura del messaggio
    </title>
    <script language="Javascript">
      function forum(kind,kind2) {
        window.open('vedi_post.php?ind='+kind+'&ind2='+kind2,'KhoraForum','toolbar=0,menubar=0,directories=0,location=0,scrollbars=1,status=0,resizable=1')
      }
    </script>
  </head>
  <? include "head.htm"; ?>
    <center>
      <h1>
<? echo "        $obj\n"; ?>
      </h1>
      <hr>
<? echo "      Da: $mitt<br>\n";
   echo "      Data: $data\n"; ?>
      <hr>
    </center>
    <? echo "$mex"; ?>
    <br>
    <br>
    <table>
      <tr>
        <td>
          <form action="new_mail.php?to=<? echo $mitt; ?>&ogg=<? echo $obj; ?>" method="post">
            <input type="submit" value="Rispondi">
          </form>
        </td>
        <td>
          <form action="del_mail.php?id=<? echo $mess; ?>" method="post">
            <input type="submit" value="Cancella">
          </form>
        </td>
      </tr>
    </table>
  </body>
</html>