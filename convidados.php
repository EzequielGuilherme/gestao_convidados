<?php
  include"conecao.php";
?>

<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Convidadosss</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="bootstrap\css\bootstrap.css" />
    <script src="bootstrap\js\bootstrap.js"></script>
  </head>

  <body id="index">
    <div class="container">
      <form class="row d-flex mt-4" action="#" method="GET">
        <div class="mt-4 p-3 text-center mb-3">
        <h2>Lista de Convidados</h2>
      </div>
          <div class="col-auto">
            <input type="hidden" id="id_convidados" name="id_convidados">
            <input type="text"class="form-control" id="nome" name="nome"placeholder="Nome"/>
          </div>
          <div class="col-auto">
            <input type="number"class="form-control" id="acompanhates" name="acompanhantes" placeholder="Acompanhantes"/>
          </div>
          <div class="col-auto">
            <button type="submit" class="btn btn-secondary mb-3">Salvar</button>
          </div>
        </form>
        <table class="table" id="table">
          <thead>
            <tr>
              <th scope="col">ID</th>
              <th scope="col">Nome convidado</th>
              <th scope="col">Acompanhantes</th>
              <th scope="col">Ação</th>
            </tr>
          </thead>
          <tbody>
          <?php
            foreach($resultado as $convidado):
              ?>
            <tr>
              <td> <?php echo $convidado['id_convidados']?> </td>
              <td id="id_nome<?php echo $convidado['id_convidados']?>"><?php echo $convidado['Nome_convidado']?> </td>
              <td id="id_acomp<?php echo $convidado['id_convidados']?>"><?php echo $convidado['Acompanhates']?> </td>
              <td> <button type="button" class="btn btn-info" onclick="atualizar(<?php  echo $convidado['id_convidados'];?>)"> Atualizar </button> </td>
              <td> <a href="excluir.php?id=<?php  echo $convidado['id_convidados'];?>"><button type="button" class="btn btn-danger">Excluir</button></a></td> 
              
            </tr>
            <?php
        endforeach;
            ?>
        </table>
    </div>
    <script>
         function atualizar(id){
          var nome = document.getElementById("id_nome"+id).innerText;
          var acompanhante = document.getElementById("id_acomp"+id).innerText;
          document.getElementById("nome").setAttribute('value',nome);
          document.getElementById("acompanhates").setAttribute('value',acompanhante); 
          document.getElementById("id_convidados").setAttribute('value',id);
          alert(nome);
          // alert("ZEKA");
      }
    </script>
  </body>
  </html>
  