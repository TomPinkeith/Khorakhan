<?
  session_start();

  $nome = $_SESSION['nome'];

  $pg = $_GET['pg'];
?>
<html>
  <body link="blue" vlink="blue" alink="blue" background="sfondo.jpg">
    <table>
      <td>
        <form action="profilo_god_bot.php<? echo "?pg=$pg"; ?>" method="post" target="profilo">
          <input type="submit" value="Profilo">
        </form>
      </td>
      <td>
        <form action="profilo_god_car.php<? echo "?pg=$pg"; ?>" method="post" target="profilo">
          <input type="submit" value="Caratteristiche">
        </form>
      </td>
      <td>
        <form action="profilo_god_obj.php<? echo "?pg=$pg"; ?>" method="post" target="profilo">
          <input type="submit" value="Oggetti">
        </form>
      </td>
      <td>
        <form action="profilo_god_mon.php<? echo "?pg=$pg"; ?>" method="post" target="profilo">
          <input type="submit" value="Monete">
        </form>
      </td>
      <td>
        <form action="profilo_god_not.php<? echo "?pg=$pg"; ?>" method="post" target="profilo">
          <input type="submit" value="Note">
        </form>
      </td>
      <td>
        <form action="profilo_god_exp.php<? echo "?pg=$pg"; ?>" method="post" target="profilo">
          <input type="submit" value="Esperienza">
        </form>
      </td>
      <td>
        <form action="profilo_god_mas.php<? echo "?pg=$pg"; ?>" method="post" target="profilo">
          <input type="submit" value="Note Master">
        </form>
      </td>
      <td>
        <form action="profilo_god_app.php<? echo "?pg=$pg"; ?>" method="post" target="profilo">
          <input type="submit" value="Appunti Master">
        </form>
      </td>
    </table>
  </body>
</html>