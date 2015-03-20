<?
  define("a",1);
  define("j",1);
  define("s",1);
  define("b",2);
  define("k",2);
  define("t",2);
  define("c",3);
  define("l",3);
  define("u",3);
  define("d",4);
  define("m",4);
  define("v",4);
  define("e",5);
  define("n",5);
  define("w",5);
  define("f",6);
  define("o",6);
  define("x",6);
  define("g",7);
  define("p",7);
  define("y",7);
  define("h",8);
  define("q",8);
  define("z",8);
  define("i",9);
  define("r",9);

  $nome = $_GET['nome'];

  echo "$nome\n";

  $nome = explode("/", $nome);
  $nome = implode("+", $nome);

  echo $nome;
?>