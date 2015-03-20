<? session_start(); ?>
<? include "head.htm"; ?>
<html>
<center>
<script language="javascript">
  function khoramail() {
    window.open('vedi_mail.htm','Khoramail','toolbar=0,menubar=0,directories=0,location=0,scrollbars=1,status=0,resizable=1')
  }
</script>
  <a href="javascript:khoramail();">
    <?
      include "funzioni.php";
  if (! $apri) {
    die("Non hai effettuato il login!!!");
  }
      accedi_db();

      $query1 = "SELECT destinatario, letto FROM khoramail";
      $passo1 = mysql_query($query1);

      $nuovi = 0;

      while (list($dest, $letto) = mysql_fetch_array($passo1)) {
        if ($dest == $_SESSION['nome']) {
          if ($letto == 0) {
            $nuovi++;
          }
        }
      }

      switch ($nuovi) {
        case 0:
          echo "    Nessun nuovo messaggio";
          break;
        case 1:
          echo "    <b>1 nuovo messaggio</b>";
          break;
        default:
          echo "    <b>$nuovi"." nuovi messaggi</b>";
      }
    ?>
  </a>
</center>