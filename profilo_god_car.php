<?
  session_start();

  include "funzioni.php";
  if (! $apri) {
    die("Non hai effettuato il login!!!");
  }

  $id = $_GET['pg'];

  accedi_db();
?>
<html>
<body link="blue" vlink="blue" alink="blue" background="sfondo.jpg">
<?

  $query = "SELECT data_creazione, ultimo_accesso, forza, destrezza, costituzione, intelligenza, carisma, aspetto, persuasione, percezione, prontezza, notoriety, classe, px, monete, razza, archetipo FROM personaggi WHERE id=$id";
  $passo1 = mysql_query($query);
  list($data, $ultimo, $forza, $destrezza, $costituzione, $intelligenza, $carisma, $aspetto, $persuasione, $percezione, $prontezza, $notoriety, $classe, $px, $monete, $razza, $archetipo) = mysql_fetch_array($passo1);

  echo "<center>\n  <h1>\n    $id\n  </h1>\n</center>\n";

  $data = date("d - n - Y  H:i", $data);
  $ultimo = date("d - n - Y  H:i", $ultimo);

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
      <td align="right" width="40%">
        Ultimo accesso:
      </td>
      <td width="40%">
        <? echo $ultimo."\n"; ?>
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