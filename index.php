<?php

$text  = "Olá";

$idade = 18;

$nome = "Zeka,";

$amigododono = false;

echo $text." ".$nome." você tem ".$idade." anos"."<br>";

if($idade >= 18) 
    {
    echo " Entrada liberada!";
    }
    elseif($amigododono == true)
    {
        echo " Entrada liberada!";
    }
else
  {
      echo " Entrada negada!!";
  }

 for($x = 1; $x <= 100; $x++)
 {
   echo"<br> <br> Nome ".$x."<br>";
 } 

 $conte = 1;

 while($conte <= 100)
 {
    echo"<br> <br> E boy ta lindo ".$conte."<br>";
     $conte++;

 }

?>

