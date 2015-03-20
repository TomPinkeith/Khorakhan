<?
  session_start();

  $nome = $_SESSION['nome'];

  include "funzioni.php";
  if (! $apri) {
    die("Non hai effettuato il login!!!");
  }

  accedi_db();
?>
<html>
<body link="blue" vlink="blue" alink="blue" background="sfondo.jpg">
<?
  $query = "SELECT data_creazione, forza, destrezza, costituzione, intelligenza, carisma, aspetto, persuasione, percezione, prontezza, notoriety, classe, px, monete, razza, archetipo FROM personaggi WHERE nome=\"$nome\"";
  $passo1 = mysql_query($query);
  list($data, $forza, $destrezza, $costituzione, $intelligenza, $carisma, $aspetto, $persuasione, $percezione, $prontezza, $notoriety, $classe, $px, $monete, $razza, $archetipo) = mysql_fetch_array($passo1);

  echo "<center>\n  <h1>\n    $nome\n  </h1>\n</center>\n";

  $data = date("d - n - Y  H:i", $data);

  $notoriety = number_format($notoriety/10,1,",","'");

  $liv2 = (sqrt(8*($px/1000)+1)+1)/2;

  $liv1 = number_format(ceil($liv2)-1, 0, "", "");
  if ($liv1+1 == $liv2) {
    $liv1++;
  }
  $liv2 = number_format($liv2, 4, ",", "'");

  $px = number_format($px, 0, "", "");
  
  $pxnec = number_format(((($liv1+1)*($liv1+1)) - ($liv1+1))*500, 0, "","");
  
  $pxnec = number_format(($pxnec - $px), 0, ",", "'");
  
  $px = number_format($px, 0, "", "'");
?>
<center>
  <table width="80%" align="center" border="0">
    <tr>
      <td align="right" width="40%">
        Data creazione:
      </td>
      <td width="40%">
        <? echo $data."\n"; ?>
      </td>
    </tr>
    <tr>
      <td align="right">
        <br>
      </td>
      <td>
        <br>
      </td>
    </tr>
    <tr>
      <td align="right">
        Notorietà:
      </td>
      <td>
        <? echo $notoriety."\n"; ?>
      </td>
    </tr>
    <tr>
      <td align="right">
        <br>
      </td>
      <td>
        <br>
      </td>
    </tr>
    <tr>
      <td align="right">
        Carica:
      </td>
      <td>
        <? echo $classe."\n"; ?>
      </td>
    </tr>
    <tr>
      <td align="right">
        Punti esperienza:
      </td>
      <td>
        <? echo $px."\n"; ?>
      </td>
    </tr>
    <tr>
      <td align="right">
        Livello:
      </td>
      <td>
        <? echo "$liv1"."° ($liv2)"."\n"; ?>
      </td>
    </tr>
    <tr>
      <td align="right">
        Punti al prossimo livello:
      </td>
      <td>
        <? echo $pxnec."\n"; ?>
      </td>
    </tr>
    <tr>
      <td align="right">
        <br>
      </td>
      <td>
        <br>
      </td>
    </tr>
  </table>
  <table width="75%">
    <tr>
      <td align="center" width="33%">
        <b>Fisici:</b>
        <br>
        <br>
        Forza: <? echo $forza; ?>
        <br>
        Destrezza: <? echo $destrezza; ?>
        <br>
        Costituzione: <? echo $costituzione; ?>
      </td>
      <td align="center" width="33%">
        <b>Sociali:</b>
        <br>
        <br>
        Carisma: <? echo $carisma; ?>
        <br>
        Persuasione: <? echo $persuasione; ?>
        <br>
        Aspetto: <? echo $aspetto; ?>
      </td>
      <td align="center" width="33%">
        <b>Mentali:</b>
        <br>
        <br>
        Percezione: <? echo $percezione; ?>
        <br>
        Intelligenza: <? echo $intelligenza; ?>
        <br>
        Prontezza di spirito: <? echo $prontezza; ?>
      </td>
    </tr>
  </table>
  <hr>
  <table align="center" width="75%" border=0>
    <tr>
      <td align="center" width="100%">
        <h1>
          Acquista abilità:
        </h1>
      </td>
    </tr>
  </table>
  <script language='javascript'>
    function abilita(tipo) {
      window.open('abilita.php?tipo='+tipo,'KhoraAbilità','toolbar=0,menubar=0,directories=0,location=0,scrollbars=1,status=0,resizable=1');
    }
  </script>
  <table align="center" width="75%" border=0>
    <tr>
      <td align="center" width="33%">
        <br>
        <h2>
          <a href="javascript:abilita('attitudini');">
            Attitudini
          </a>
        </h2>
      </td>
      <td align="center" width="33%">
        <br>
        <h2>
          <a href="javascript:abilita('capacità');">
            Capacità
          </a>
        </h2>
      </td>
      <td align="center" width="33%">
        <br>
        <h2>
          <a href="javascript:abilita('conoscenze');">
            Conoscenze
          </a>
        </h2>
      </td>
    </tr>
  </table>