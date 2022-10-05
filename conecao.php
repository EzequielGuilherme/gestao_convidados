
<?php

$servidor = "127.0.0.1";

$usuario = "root";

$senha = "sebrae123";

$banco = "primeirobanco";

$conexao = new mysqli($servidor, $usuario, $senha, $banco);
if (isset ($_GET['nome']))
{
if($conexao->connect_error)
{
    echo "Não foi possivel conectar";
}else if(isset($_GET['id_convidados']) && ($_GET['id_convidados'] !="")){
  $id = $_GET['id_convidados'];
  $sqlUpdate = "UPDATE convidados set Nome_convidado='$_GET[nome]', Acompanhates=$_GET[acompanhantes] WHERE id_convidados='$id'";
  $conexao -> query($sqlUpdate);
  $resultado = $conexao -> query("SELECT*FROM convidados");
  //  echo  "<p1>teste</p1>";
  // "<p1>Passei aqui<p1>";
}else 
{
  //  echo 'BELEZA';
    $sqlgravar = "INSERT INTO convidados(Nome_convidado, Acompanhates) values ('$_GET[nome]', $_GET[acompanhantes])";
    $conexao -> query($sqlgravar);
    $resultado = $conexao -> query("select*from  convidados");

  }
}else{
    //$resultado = array();

    $resultado =  $conexao -> query("select*from convidados");

    }

//----------------------exemplo de mostrar resultado-------------
    //print_r($resultado >num_roms);
    //while($row = $resultado -> fetch_assoc())
    //{
    //printf("</br> <tr> <td>%s </td> </tr>", $row["Nome_convidado"], "</tables>");
    //$row["Acompanhates", "</tables>"]);
    //}


    //foreach($resultado as $convidado)
    //{
      //  echo "</br>", $convidado["Nome_convidado"];

    //}

?>

