create database aula_bd

use aula_bd


create table produtos
(
    Id_produto int not null auto_increment primary key,
    nm_produto varchar(30) not null,
    qtde_estoque int not null,
    data_cadastro date not null,
    valor_venda decimal(9,2) not null,
    situacao bit not null
);

INSERT INTO produtos 
(nm_produto, qtde_estoque, data_cadastro, valor_venda, situacao) 
   VALUES ('cavalo branco', 250, '2022-08-16', 65,0);

INSERT INTO produtos 
(nm_produto, qtde_estoque, data_cadastro, VALOR_VENDA, situacao) 
   VALUES ('red label', 100, '2022-08-24', 100,0),
          ('macalan', 250, '2022-08-20', 250,1),
          ('jack daniels', 1000, '2022-08-22', 130,0),          
          ('chivas', 12, '2022-08-24', 112.00,0);  


INSERT INTO produtos
    VALUES (0, 'Novo produto 4', 999, '2022-08-16', 9.99,1);


desc produtos 

select*from produtos 

SELECT nm_produto AS 'NOME DO PRODUTO',
       qtde_estoque AS 'QUANTIDADE E ESTOQUE',
       valor_venda  AS 'VALOR DE VENDA'
FROM produtos 
where data_cadastro < '2022-07-01';

    
SELECT nm_produto AS 'NOME DO PRODUTO',
       qtde_estoque AS 'QUANTIDADE EM ESTOQUE',
       data_cadastro AS 'DATA DE CADASTRO',
       valor_venda  AS 'VALOR DE VENDA'
FROM produtos
WHERE situacao = 0
ORDER BY valor_venda DESC, data_cadastro DESC;

select count(Id_produto) AS 'Total' from produtos where valor_venda > 50.00;

select distinct (data_cadastro)
from produtos
order by data_cadastro;

SELECT SUM(VALOR_VENDA)
FROM produtos;

SELECT AVG(VALOR_VENDA)
FROM produtos;

SELECT SUM(VALOR_VENDA) AS 'SOMA DO VALOR DE VENDA', 
AVG(VALOR_VENDA) AS 'MÉDIA DO VALOR DE VENDA',
COUNT(Id_PRODUTO) AS 'TOTAL DE PRODUTOS CADASTRADOS'
FROM produtos;

SELECT MAX(VALOR_VENDA)
FROM produtos;

SELECT MIN(VALOR_VENDA)
FROM produtos;

SELECT nm_produto AS 'Original',
       upper(nm_produto) as 'Tudo maiúsculo',
       lower(nm_produto) as 'Tudo minúsculo'
FROM produtos; 

#####################################################################


create table musicas
(
id_musicas int not null auto_increment  primary key,
Musica varchar(225),
cantores varchar(225)
);

desc musicas 

select*from musicas

insert into musicas (musica,cantores) values('chitãozinho e xororó','sinônimos')

insert into musicas (musica,cantores) values('chitãozinho e xororó','evidências')

insert into musicas (musica,cantores) values('bruno e marrone','a dama de vermelho')

insert into musicas (musica,cantores) values('victor e leo','borboletas ')

insert into musicas (musica,cantores) values('ainda ontem chorei de saudades','leonardo e eduardo costa ')

insert into musicas (musica,cantores) values('boate azul','leonardo e eduardo costa ')

insert into musicas (musica,cantores) values('telefone mudo','leonardo e eduardo costa ')
