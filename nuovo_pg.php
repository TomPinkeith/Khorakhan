<html>
  <head>
    <title>
      Creazione di un nuovo personaggio
    </title>
  </head>
  <?
    include "funzioni2.php";
    include "head.htm";
  ?>
    <center>
      <h1>
        Nuovo PG
      </h1>
      <hr>
      <form action='check_new.php' method='post'>
<center> Si ricorda a tutti che non possono esistere personaggi nati in una città che non sia Khorakhan. </center>
        <table border='0' width='100%'>
	  <tr>
	    <td align='right' width='50%'>
	      Nome PG :
	    </td>
	    <td align='left' width='50%'>
	      <input type='text' name='nome'>
	    </td>
	  </tr>
	  <tr>
	    <td align='right' width='50%'>
	      E-mail :
	    </td>
	    <td align='left' width='50%'>
	      <input type='text' name='mail'>
	    </td>
	  </tr>
	  <tr>
	    <td align='right' width='50%'>
	      Hotmail :
	    </td>
	    <td align='left' width='50%'>
	      <input type='text' name='hotmail'>
	    </td>
	  </tr>
	</table>
	<hr>
	<h3>
	  Definizione delle caratteristiche
	</h3>
      Ogni giocatore deve scegliere quali attributi del personaggio sono i più importanti tra Sociali, Mentali e Fisici. Gli attributi Sociali indicano come il personaggio si relaziona con gli altri esseri viventi, quelli mentali le sue capacità intellettive e le sue conoscenze, mentre quelle fisiche indicano la sua forza e la sua prestanza fisica.
      <br>
      Scegli l'ordine che preferisci per i tuoi attributi (prima i primari, poi i secondari ed infine i terziari).
      <br>
      <br>
      <select name="attributi">
        <option>Mentali, Fisici, Sociali</option>
        <option>Mentali, Sociali, Fisici</option>
        <option>Fisici, Mentali, Sociali</option>
        <option>Fisici, Sociali, Mentali</option>
        <option>Sociali, Mentali, Fisici</option>
        <option>Sociali, Fisici, Mentali</option>
      </select>
      <br>
      <br>
      Ora, in base alla scelta effettuata in precedenza (che potete ancora cambiare) dovete distribuire 7 punti tra gli attributi primari, 6 tra quelli secondari e 5 tra quelli terziari. Il punteggio minimo per ogni attributo è 1, mentre il massimo è 3.
      <br>
      <br>
      <table align="center" width="75%">
        <tr>
          <td align="center" width="33%">
            <font face="Lucida Handwriting"><b>Mentali</b></font>
            <br>
            <br>
            Percezione:
            <br>
            <input type="text" size="1" name="Percezione" value=1>
            <br>
            <br>
            Intelligenza:
            <br>
            <input type="text" size="1" name="Intelligenza" value=1>
            <br>
            <br>
            Prontezza di spirito:
            <br>
            <input type="text" size="1" name="Prontezza" value=1>
          </td>
          <td align="center" width="33%">
            <font face="Lucida Handwriting"><b>Fisici</b></font>
            <br>
            <br>
            Forza:
            <br>
            <input type="text" size="1" name="Forza" value=1>
            <br>
            <br>
            Destrezza:
            <br>
            <input type="text" size="1" name="Destrezza" value=1>
            <br>
            <br>
            Costituzione:
            <br>
            <input type="text" size="1" name="Costituzione" value=1>
          </td>
          <td align="center" width="33%">
            <font face="Lucida Handwriting"><b>Sociali</b></font>
            <br>
            <br>
            Carisma:
            <br>
            <input type="text" size="1" name="Carisma" value=1>
            <br>
            <br>
            Persuasione:
            <br>
            <input type="text" size="1" name="Persuasione" value=1>
            <br>
            <br>
            Aspetto:
            <br>
            <input type="text" size="1" name="Empatia" value=1>
          </td>
        </tr>
      </table>
	<hr>
	<h3>
	  Scelta della razza
	</h3>
	Razza :
	<select name='razza'>
        <?
          accedi_db();

          $query_1 = "SELECT razza FROM razze WHERE aperta=0 ORDER BY razza ASC";
          $passo_1 = mysql_query($query_1);
          while (list($rax) = mysql_fetch_array($passo_1)) {
            echo "        <option>$rax</option>\n";
          }
        ?>
	</select>
        <br>
        Sesso :
        <select name='sesso'>
          <option value="M"> Maschio </option>
          <option value="F"> Femmina </option>
        </select>
	<br>
	<br>
	<hr>
	<input type='submit' value='Invia la registrazione!'>
      </form>
    </center>
  </body>
</HTML>