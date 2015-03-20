<?
  $text = $_GET['cosa'];

  $img = imagecreatefromjpeg("sfondo.jpg");

  $text_color = imagecolorallocate($img, 0xCC, 0x00, 0x00);
  imagestring($img, 5, 0, 0, $text, $text_color);

  imagejpeg($img);
?>