<?
  session_start();

  $_SESSION['nome'] = "Inesistente";

  include "funzioni.php";

  accedi_db();

  $nome = ucwords(strtolower($_POST["nome"]));
  $pass_1 = base64_encode($nome);
  if (strlen($pass_1) >= 20) {
    $pass = substr($pass_1, 0, 20);
  } else {
    $pass = $pass_1;
  }
  $mail = $_POST["mail"];
  $hmail = $_POST["hotmail"];
  $data = time();

  $razza = $_POST["razza"];
  $sesso = $_POST["sesso"];

  $forza = $_POST["Forza"];
  $destrezza = $_POST["Destrezza"];
  $costituzione = $_POST["Costituzione"];

  $intelligenza = $_POST["Intelligenza"];
  $prontezza = $_POST["Prontezza"];
  $percezione = $_POST["Percezione"];

  $carisma = $_POST["Carisma"];
  $persuasione = $_POST['Persuasione'];
  $aspetto = $_POST["Empatia"];

  $fisici = $forza+$destrezza+$costituzione;
  $mentali = $intelligenza+$prontezza+$percezione;
  $sociali = $carisma+$persuasione+$aspetto;

  $ordine = $_POST["attributi"];

  $errori = 0;

  echo "<html>\n";
  echo "<script language=\"JavaScript\">\n";

  switch ($ordine){
    case "Mentali, Fisici, Sociali":
      if ($mentali != 7) {
        echo "alert('Il punteggio degli attributi MENTALI non è valido!');\n";
        ++$errori;
      }
      if ($fisici != 6) {
        echo "alert('Il punteggio degli attributi FISICI non è valido!');\n";
        ++$errori;
      }
      if ($sociali != 5) {
        echo "alert('Il punteggio degli attributi SOCIALI non è valido!');\n";
        ++$errori;
      }
    break;
    case "Mentali, Sociali, Fisici":
      if ($mentali != 7) {
        echo "alert('Il punteggio degli attributi MENTALI non è valido!');\n";
        ++$errori;
      }
      if ($fisici != 5) {
        echo "alert('Il punteggio degli attributi FISICI non è valido!');\n";
        ++$errori;
      }
      if ($sociali != 6) {
        echo "alert('Il punteggio degli attributi SOCIALI non è valido!');\n";
        ++$errori;
      }
    break;
    case "Fisici, Mentali, Sociali":
      if ($mentali != 6) {
        echo "alert('Il punteggio degli attributi MENTALI non è valido!');\n";
        ++$errori;
      }
      if ($fisici != 7) {
        echo "alert('Il punteggio degli attributi FISICI non è valido!');\n";
        ++$errori;
      }
      if ($sociali != 5) {
        echo "alert('Il punteggio degli attributi SOCIALI non è valido!');\n";
        ++$errori;
      }
    break;
    case "Fisici, Sociali, Mentali":
      if ($mentali != 5) {
        echo "alert('Il punteggio degli attributi MENTALI non è valido!');\n";
        ++$errori;
      }
      if ($fisici != 7) {
        echo "alert('Il punteggio degli attributi FISICI non è valido!');\n";
        ++$errori;
      }
      if ($sociali != 6) {
        echo "alert('Il punteggio degli attributi SOCIALI non è valido!');\n";
        ++$errori;
      }
    break;
    case "Sociali, Mentali, Fisici":
      if ($mentali != 6) {
        echo "alert('Il punteggio degli attributi MENTALI non è valido!');\n";
        ++$errori;
      }
      if ($fisici != 5) {
        echo "alert('Il punteggio degli attributi FISICI non è valido!');\n";
        ++$errori;
      }
      if ($sociali != 7) {
        echo "alert('Il punteggio degli attributi SOCIALI non è valido!');\n";
        ++$errori;
      }
    break;
    case "Sociali, Fisici, Mentali":
      if ($mentali != 5) {
        echo "alert('Il punteggio degli attributi MENTALI non è valido!');\n";
        ++$errori;
      }
      if ($fisici != 6) {
        echo "alert('Il punteggio degli attributi FISICI non è valido!');\n";
        ++$errori;
      }
      if ($sociali != 7) {
        echo "alert('Il punteggio degli attributi SOCIALI non è valido!');\n";
        ++$errori;
      }
    break;
  }

  if ($forza > 3) {
    echo "alert('Il punteggio di FORZA è troppo alto!');\n";
    ++$errori;
  }

  if ($destrezza > 3) {
    echo "alert('Il punteggio di DESTREZZA è troppo alto!');\n";
    ++$errori;
  }

  if ($costituzione > 3) {
    echo "alert('Il punteggio di COSTITUZIONE è troppo alto!');\n";
    ++$errori;
  }

  if ($carisma > 3) {
    echo "alert('Il punteggio di CARISMA è troppo alto!');\n";
    ++$errori;
  }

  if ($persuasione > 3) {
    echo "alert('Il punteggio di PERSUASIONE è troppo alto!');\n";
    ++$errori;
  }

  if ($aspetto > 3) {
    echo "alert('Il punteggio di ASPETTO è troppo alto!');\n";
    ++$errori;
  }

  if ($percezione > 3) {
    echo "alert('Il punteggio di PERCEZIONE è troppo alto!');\n";
    ++$errori;
  }

  if ($intelligenza > 3) {
    echo "alert('Il punteggio di INTELLIGENZA è troppo alto!');\n";
    ++$errori;
  }

  if ($prontezza > 3) {
    echo "alert('Il punteggio di PRONTEZZA DI SPIRITO è troppo alto!');\n";
    ++$errori;
  }

  if ($forza < 1) {
    echo "alert('Il punteggio di PRONTEZZA DI SPIRITO è troppo basso!');\n";
    ++$errori;
  }

  if ($destrezza < 1) {
    echo "alert('Il punteggio di DESTREZZA è troppo basso!');\n";
    ++$errori;
  }

  if ($costituzione < 1) {
    echo "alert('Il punteggio di COSTITUZIONE è troppo basso!');\n";
    ++$errori;
  }

  if ($carisma < 1) {
    echo "alert('Il punteggio di CARISMA è troppo basso!');\n";
    ++$errori;
  }

  if ($persuasione < 1) {
    echo "alert('Il punteggio di PERSUASIONE è troppo basso!');\n";
    ++$errori;
  }

  if ($aspetto < 1) {
    echo "alert('Il punteggio di ASPETTO è troppo basso!');\n";
    ++$errori;
  }

  if ($percezione < 1) {
    echo "alert('Il punteggio di PERCEZIONE è troppo basso!');\n";
    ++$errori;
  }

  if ($intelligenza < 1) {
    echo "alert('Il punteggio di INTELLIGENZA è troppo basso!');\n";
    ++$errori;
  }

  if ($prontezza < 1) {
    echo "alert('Il punteggio di PRONTEZZA DI SPIRITO è troppo basso!');\n";
    ++$errori;
  }

  if ($nome == "") {
    echo "alert('Nome nullo!');\n";
    ++$errori;
  }

  if ($mail == "") {
    echo "alert('Indirizzo e-mail nullo!');\n"
    ++$errori;
  )

  $queryx = "SELECT id FROM personaggi WHERE nome=\"$nome\"";
  $passox = mysql_query($queryx);
  if (list($id) = mysql_fetch_array($passox)) {
    echo "alert('Nome già in uso!');\n";
    ++$errori;
  }

  if ($errori != 0) {
    echo "history.back();\n";
    die("</script>\n");
  } else {
    $classe = "Cittadino";

    if ($sesso == "F") {
      $classe = implode("a",explode("o", $classe));
    }

  $destinatario = "$nome <$mail>";

  $oggetto = "Iscrizione a Khorakhan";

   $messaggio = "
<html>
  <head>
  </head>
  <body link=grey alink=grey vlink=grey bgcolor=green>
    <center>
      <h1>
        Benvenuto $nome!!!
      </h1>
    </center>
    Siamo lieti di annunciarle che lei è stato iscritto alla comunità virtuale di Khorakhan!
    <br>
    Qui sotto sono riportati i dati necessari al completamento della sua iscrizione.
    <br>
    <br>
    Nome PG : <u>$nome</u>
    <br>
    Password : <u>$pass</u>
    <br>
    <br>
    La invitiamo a creare i dettagli del vostro personaggio consultando la guida presente sul sito ed i personaggi \"Guida\" del sito.
    <br>
    Per qualunque informazione o problema è pregato di rivolgersi a <a href=\"mailto:itzamna@khorakhan.net\">Itzamna</a>
    <br>
    <br>
    Desideriamo informarla che qualora lei non accedesse col suo personaggio entro due (2) settimane a partire dall'invio di tale messaggio la sua iscrizione sarà annullata.
    <br>
    <br>
    <br>
    A presto.
    <br>
    L'amministrazione di <a href=\"www.khorakhan.net\">Khorakhan</a>
  </body>
</html>
";
  

  $intestazioni = "MIME-Version: 1.0\r\n";
  $intestazioni .= "Content-type: text/html; charset=iso-8859-1\r\n";
  $intestazioni .= "From: Itzamna <Itzamna@khorakhan.net>\r\n";


    $query = "INSERT INTO personaggi (nome, razza, data_creazione, pass, mail, hmail, forza, destrezza, costituzione, carisma, persuasione, aspetto, percezione, intelligenza, prontezza, stanza, sesso, classe, note_master, ultimo_accesso) VALUES (\"$nome\", \"$razza\", $data, \"$pass\", \"$mail\", \"$hmail\", $forza, $destrezza, $costituzione, $carisma, $persuasione, $aspetto, $percezione, $intelligenza, $prontezza,\"MAPPA\", \"$sesso\", \"$classe\", \"<center>Nessuna nota</center>\", 0)";
    $passo = mysql_query($query);
    if ($passo) {
      mail($destinatario, $oggetto, $messaggio, $intestazioni);
    }

    echo "</script>\n";
    echo "<center>\n";
    echo "<h1>\n";
    echo "  Iscrizione corretta!<br><br>\n";
    echo "  Un'e-mail è stata inviata all'indirizzo che ci hai indicato, a breve ti verranno forniti i dati per ultimare la registrazione";
  }
?>