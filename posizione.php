<?
  session_start();
  include "funzioni.php";
  if (! $apri) {
    die("Non hai effettuato il login!!!");
  }
?>
<html>
<meta http-equiv='refresh' content=20>
<script language="javascript">
  function exp() {
    window.open('exp.php','Exp','toolbar=0,menubar=0,directories=0,location=0,scrollbars=1,status=0,resizable=1')
  }
  function admin() {
    window.open('admin.php','KhoraAdmin','toolbar=0,menubar=0,directories=0,location=0,scrollbars=1,status=0,resizable=1')
  }
  function chiudi() {
    window.open('esci.php','KhoraPrincipale','toolbar=0,menubar=0,directories=0,location=0,scrollbars=1,status=0,resizable=1')
  }
  function guida() {
    window.open('mondo.htm','KhoraAmbientazione','toolbar=0,menubar=0,directories=0,location=0,scrollbars=1,status=0,resizable=1')
  }
</script>
<?
  include "head.htm";

  accedi_db();

  $nome = $_SESSION['nome'];

  $query = "SELECT stanza, permessi FROM personaggi WHERE nome=\"$nome\"";
  $passo1 = mysql_query($query);
  list($stanza, $perm) = mysql_fetch_array($passo1);
?>
<table align="center" border=0 width="100%">
  <tr>
    <td align="left" width="00%">
<Info luogo>
    </td>
    <td align="right" width="10%">
      <a href="javascript:guida();">
        <img src="bott_guida.gif" border=0>
      </a>
    </td>
    <td align="center" width="55%">
      <? echo "<font face=\"Monotype Corsiva\" color=\"Amaranthum\"><h1>".ucwords(strtolower($stanza))."</h1></font>\n"; ?>
    </td>
    <td align="center" width="15%">
      <?
        if ($perm >=7) {
          echo "      <a href=\"javascript:admin();\">\n";
          echo "        <img src=\"bott_admin.gif\" border=0>\n";
          echo "      </a>\n";
        }
      ?>
    </td>
    <td align="right" width="10%">
      <?
        if ($perm >= 5) {
          echo "      <a href=\"javascript:exp();\">\n";
          echo "        <img src=\"bott_exp.gif\" border=0>\n";
          echo "      </a>\n";
        }
      ?>
    </td>
    <td align="right" width="5%">
      <a href="javascript:chiudi();">
        <img src="bott_chiudi.gif" border=0>
      </a>
    </td>
  </tr>
</table>
      
  