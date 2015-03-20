<?
  session_start();

  include("funzioni.php");
  if (! $apri) {
    die("Non hai effettuato il login!!!");
  }

  $tipo = $_GET['tipo'];

  echo "<html>\n";
  echo "  <head>\n";
  echo "    <title>negozio</title>\n";
  echo "  </head>\n";
  echo "  <body link=blue alink=blue vlink=blue background=\"sfondo.jpg\">\n";
  echo "  <table align=center width=100% border=1 bordercolor=000000 cellspacing=0 bgcolor=eacda3 cellpadding=4>\n";
  echo "    <tr>\n";
  echo "      <td align=center width=25% bgcolor=ffffff>\n";
  echo "        <font color=red><b>Nome</b></font>\n";
  echo "      </td>\n";
  echo "      <td align=center width=50% bgcolor=ffffff>\n";
  echo "        <font color=red><b>Descrizione</b></font>\n";
  echo "      </td>\n";
  echo "      <td align=center width=7% bgcolor=ffffff>\n";
  echo "        <font color=red><b>Peso</b></font>\n";
  echo "      </td>\n";
  echo "      <td align=center width=7% bgcolor=ffffff>\n";
  echo "        <font color=red><b>Costo</b></font>\n";
  echo "      </td>\n";
  echo "      <td align=center width=11% bgcolor=ffffff>\n";
  echo "        <font color=red><b>Acquista</b></font>\n";
  echo "      </td>\n";
  echo "    </tr>\n";

  accedi_db();

  $query_1 = "SELECT * FROM oggetti WHERE tipo LIKE \"%$tipo %\" ORDER BY nome ASC";
  $passo_1 = mysql_query($query_1);
  while(list($id, $name, $costo, $peso, $tipo, $descr) = mysql_fetch_array($passo_1)) {
    echo "    <tr>\n";
    echo "      <td align=center width=25%>\n";
    echo "        $name\n";
    echo "      </td>\n";
    echo "      <td width=50%>\n";
    echo "        ".nl2br($descr)."\n";
    echo "      </td>\n";
    echo "      <td align=center width=7%>\n";
    echo "        $peso\n";
    echo "      </td>\n";
    echo "      <td align=center width=7%>\n";
    echo "        $costo\n";
    echo "      </td>\n";
    echo "      <td align=center width=11%>\n";
    echo "        <a href=\"acquista.php?id=$id\">Acquista</a>\n";
    echo "      </td>\n";
    echo "    </tr>\n";
  }