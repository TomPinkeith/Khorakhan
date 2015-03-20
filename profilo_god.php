<?
  $pg = $_GET['pg'];
?>
<html>
  <title>
    Profilo personale
  </title>
  <script language="JavaScript">
    self.moveTo(0,0);
    self.resizeTo(screen.availWidth,screen.availHeight);
  </script>
  <frameset cols="*" rows="45,*" frameborder=no border=0>
    <frame src="profilo_god_top.php<? echo "?pg=$pg"; ?>" noresize scrolling="no">
    <frame src="profilo_god_bot.php<? echo "?pg=$pg"; ?>" name="profilo">
  </frameset>
</html>