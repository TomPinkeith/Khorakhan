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
      <td align="center" width="0%" colspan=2 bgcolor=ffffff>
      </td>
      <td align="center" width="25%" bgcolor=ffffff>
        <font color="red"><b>
          Destinatario
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

  $query = "SELECT destinatario, data, letto, id, oggetto FROM khoramail WHERE mittente=\"$nome\" AND letto NOT LIKE 2 ORDER BY data DESC";

  $passo1 = mysql_query($query);

  while (list($dest, $data, $letto, $id, $obj) = mysql_fetch_array($passo1)) {
    $data = date("d/n/Y  H:i", $data);
    echo "  <tr>\n";
    echo "    <td align=\"center\" width=\"10%\">\n";
    echo "      <a href=\"leggi_mail.php?id=$id"."&letta=1\">\n";
    echo "        Leggi\n";
    echo "      </a>\n";
    echo "    </td>\n";
    echo "    <td align=\"center\" width=\"10%\">\n";
    echo "      <img src=\"letta_"."$letto".".gif\">\n";
    echo "    </td>\n";
    echo "    <td align=\"center\" width=\"25%\">\n";

    echo "        $dest\n";

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
    