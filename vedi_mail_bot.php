<?
  session_start();

  include "funzioni.php";
  if (! $apri) {
    die("Non hai effettuato il login!!!");
  }

  accedi_db();

  $nome = $_SESSION['nome'];

?>
<html>
<title>
  Khoramail
</title>
<body link="blue" vlink="blue" alink="blue" background="sfondo.jpg">
<table align="center" border="1" width="95%" bordercolor=000000 cellspacing=0 bgcolor=eacda3 cellpadding=5>
  <font color="red">
    <tr>
      <td aling="center" width="0%" bgcolor=ffffff colspan=3>
      </td>
      <td align="center" width="25%" bgcolor=ffffff>
        <font color="red"><b>
          Mittente
        <font>
      </td>
      <td align="center" width="25%" bgcolor=ffffff>
        <font color="red"><b>
          Data
        <font>
      </td>
      <td align="center" width="25%" bgcolor=ffffff>
        <font color="red"><b>
          Oggetto
        <font>
      </td>
    </tr>
  </font>
<?
  $nome = $_SESSION['nome'];

  $query = "SELECT mittente, data, letto, id, oggetto FROM khoramail WHERE destinatario=\"$nome\" AND letto NOT LIKE 2 ORDER BY data DESC";

  $passo1 = mysql_query($query);

  while (list($mitt, $data, $letto, $id, $obj) = mysql_fetch_array($passo1)) {
    $data = date("d/n/Y  H:i", $data);
    echo "  <tr>\n";
    echo "    <td align=\"center\">\n";
    echo "      <img src=\"letta_"."$letto".".gif\">\n";
    echo "    </td>\n";
    echo "    <td align=\"center\" width=\"10%\">\n";
    echo "      <a href=\"leggi_mail.php?id=$id"."&letta=0\">\n";
    echo "        Leggi\n";
    echo "      </a>\n";
    echo "    </td>\n";
    echo "    <td align=\"center\" width=\"10%\">\n";
    echo "      <a href=\"del_mail.php?id="."$id"."\">\n";
    echo "        Elimina\n";
    echo "      </a>\n";
    echo "    </td>\n";
    echo "    <td align=\"center\" width=\"25%\">\n";

    echo "        $mitt\n";

    echo "    </td>\n";
    echo "    <td align=\"center\" width=\"25%\">\n";
    echo "      $data\n";
    echo "    </td>\n";
    echo "    <td align=\"center\" width=\"25%\">\n";
    echo "      $obj\n";
    echo "    </td>\n";
    echo "  </tr>\n";
  }
?>
</table>
    