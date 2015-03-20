<?
  // Controlla che l'utente abbia effettuato il login
  if (! isset($_SESSION['nome']))  {
    $apri = FALSE;
    die("Non hai effettuato il login");
  }

  $apri = TRUE;
    
  // Carica i dati del database
  include("db.conf.php");

  // Apre la connessione a MySQL e seleziona il database
  function accedi_db() {
    include("db.conf.php");
    $db = mysql_connect($db_host, $db_user, $db_pass);
    mysql_select_db($db_name, $db);
  }

  // Controlla che il nome e la password dell'utente corrispondano nel database
  function check_PG($nome, $pass) {
    include("db.conf.php");
    accedi_db();
    $query = "SELECT pass, permessi FROM personaggi WHERE nome=\"$nome\"";
    $passo1 = mysql_query($query);
    list($pass_db, $perm) = mysql_fetch_array($passo1);
    if ($perm <= 0) {
      unset($_SESSION['nome']);
      return "FALSE";
    }
    if ($pass == $pass_db) {
      if ($pass == "") {
        return "FALSE";
      } else {
        return "TRUE";
      }
    } else {
      return "FALSE";
    }
  }

  // Incrementa la notorietà del personaggio ogni 6 minuti di 0.1
  function inc_not($user) {
    include("db.conf.php");

    $nome = $_SESSION['nome'];
    $pass = $_SESSION['pass'];

    $test = check_PG($nome, $pass);

    if ($test != "TRUE") {
      die("PG espulso!!!");
    }

    $query = "SELECT ultimo_accesso, notoriety FROM personaggi WHERE nome=\"$user\"";
    $passo1 = mysql_query($query);
    list($accesso, $notor) = mysql_fetch_array($passo1);
    $tempo1 = $accesso + 355;
    $tempo2 = time();

    if ($tempo1 <= $tempo2) {
      $notor = $notor + 1;
      $query = "UPDATE personaggi SET notoriety=$notor WHERE nome=\"$user\"";
      mysql_query($query);
      $query = "UPDATE personaggi SET ultimo_accesso=$tempo2 WHERE nome=\"$user\"";
      mysql_query($query);
    }

    $ris = $notor / 10;

    return $ris;
  }

  // Calcola il numero degli utenti online
  function nr_online() {
    include "db.conf.php";
    accedi_db();
    $start = strtotime("-6 minutes");
    $query = "SELECT COUNT(*) FROM personaggi WHERE ultimo_accesso >= $start";
    $passo1 = mysql_query($query);
    list($numero) = mysql_fetch_array($passo1);

    return $numero;
  }

  // Controlla se il personaggio è passato di livello
  function check_liv($id,$prima,$dopo) {
    $lprima = number_format(ceil((sqrt(8*($prima/1000)+1)+1)/2)-1,0,"","");
    $ldopo = number_format(ceil((sqrt(8*($dopo/1000)+1)+1)/2)-1,0,"","");
    if ($lprima != $ldopo) {
      aumenta_liv($id,$dopo);
    } else {
      return;
    }
  }

  // Converte il TimeStamp nel calendario CIVILE (HAAB) dei Maya
  function haab($sec) {
    $sec = $sec + 160384579200 + 7200;
    $day = floor($sec/86400);

    $mesi = array("Pop","Uo","Zip","Zotz","Tzec","Xul","Yaxkin","Mol","Chen","Yax","Zac","Ceh","Mac","Kankin","Muan","Pax","Kayab","Cumhu");

    for ($i = 0; ($day-$i*365) >= 365; $i++) {
    }

    $day = $day - 365*$i;

    if ($day > 360) {
      $ris = $day - 360;
      if ($ris == 0) {
        $ris = "Sede di";
      }
      $ris = "$ris Uayeb";
    } else {
      $tmp1 = floor($day/20);
      $tmp2 = $day - $tmp1*20;
      $tmp3 = $mesi[$tmp1];

      if ($tmp2 == 0) {
        $tmp2 = "Sede di";
      }

      $ris = "$tmp2 $tmp3";
    }
    return $ris;
  }

  // Converte il TimeStamp nel calendario RELIGIOSO (TZOLKIN) dei Maya
  function tzolkin($sec) {
    $sec = $sec + 160384579200 + 7200;
    $day = floor($sec/86400);

    $divinita = array("Imix","Ik","Akbal","Kan","Chiccan","Cimi","Manik","Lamat","Muluc","Oc","Chuen","Eb","Ben","Ix","Men","Cib","Caban","Edznab","Cauac","Ahau");

    $tmp1 = floor($day/13);
    $tmp2 = $day - $tmp1*13;
    $tmp3 = $tmp2 + 1;

    $tmp4 = floor($day/20);
    $tmp5 = $day - $tmp4*20;
    $tmp6 = $divinita[$tmp5];

    return "$tmp3 $tmp6";
  }

  // Converte il TimeStamp nel LUNGO CICLO dei Maya
  function longcicle($sec) {
    $sec = $sec + 160384579200 + 7200;
    $day = floor($sec/86400);

    $baktun = floor($day/144000);
    $day = $day - $baktun*144000;
    $katun = floor($day/7200);
    $day = $day - $katun*7200;
    $tun = floor($day/360);
    $day = $day - $tun*360;
    $uinal = floor($day/20);
    $kin = $day - $uinal*20;

    return "$baktun.$katun.$tun.$uinal.$kin";
  }

  // Impedisce l'inserimento di tag HTML in chat
  function nohtml($mess) {
    $mess = str_replace(array("<", ">"), array("&lt", "&gt"), $mess);
    return $mess;
  }

  // Permette l'inserimento di testo grassetto, sottolineato e corsivo nel forum
  function bui($mess) {
    $mess = str_replace(array("[B]", "[/B]", "[b]", "[/b]"), array("<b>", "</b>", "<b>", "</b>"), $mess);
    $mess = str_replace(array("[U]", "[/U]", "[u]", "[/u]"), array("<u>", "</u>", "<u>", "</u>"), $mess);
    $mess = str_replace(array("[I]", "[/I]", "[i]", "[/i]"), array("<i>", "</i>", "<i>", "</i>"), $mess);

    return $mess;
  }

  // Sostituisce, nella chat, il + ad inizio frase
  function chat1($mess) {
    $tmp = explode("+", $mess);
    if ($tmp[0] == "") {
      $tmp[0] = " <font color=\"red\" size=3> ";
      $mess = implode(" ", $tmp);
    }
    return $mess;
  }

  // Sostituisce, nella chat, le parentesi quadre
  function chat2($mess, $chi, $god="Nessuna") {
    // Scritta nella chat
    if ($chi == 1) {
      $mess = str_replace(array("[", "]"), array("<font color=\"red\" size=3> ", "</font> "), chat1($mess));
      $mess = "<font color=\"black\" size=3> - ".$mess."</font>";

      return $mess;
    }

    // Sussurro
    if ($chi == 2) {
      $mess = str_replace(array("[", "]"), array("<font color=\"red\" size=3> ", "</font> "), chat1($mess));
      $mess = "<font color=\"black\" size=3><i> Sussurra: ".$mess."</i></font>";

      return $mess;
    }

    // Scritta nel forum
    if ($chi == 3) {
      $mess = str_replace(array("[", "]"), array("<font color=\"red\" size=3> ", "</font> "), $mess);
      $mess = "<font color=\"black\" size=3> ".$mess."</font>";

      return $mess;
    }

    // Scritta delle divinità
    if ($chi == 4) {
      $query = "SELECT colore FROM personaggi WHERE nome=\"$god\"";
      $passo = mysql_query($query);
      list($col) = mysql_fetch_array($passo);
      $mess = str_replace(array("[", "]"), array("<font color=black size=3> ", "</font><font color=$col size=5> "), $mess);
      $mess = str_replace(array("{", "}"), array("<img src=\"", "\">"), $mess);
      $mess = "<h1><center><font color=$col size=5> ".$mess."</font></center></h1>";

      return $mess;

    }
  }

  // Calcola la fase lunare attuale nella città
  function luna($data) {
    $via = $data-1097768781;
    $fase = $via/2551500;
    while ($fase >= 1) {
      $fase--;
    }
    $fase = round($fase*29);

    return $fase;
  }
?>
