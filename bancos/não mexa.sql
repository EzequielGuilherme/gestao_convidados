##primeiro banco em mysql##
create database primeirobanco;

use primeirobanco;

##tabela de produtos##

create table produto
(
id_produto int not null auto_increment primary key,
nome_produto varchar(30) not null,
qtd_estoque int not null,
data_cadastro date not null
);  

desc produto;

drop table produto; 

select*from produto;


##tabela de vendas ###

create table vendas
(
id_venda int not null auto_increment primary key,
data_venda date not null,
id_cliente int, constraint vendacli foreign key (id_cliente) references cliente (id_cliente) 
);

desc vendas;

drop table vendas;

## tabela cliente##

create table cliente 
(
id_cliente int not null auto_increment primary key,
nome_cliente varchar(35) not null,
data_nasc date not null,
data_cadastro date not null
);

desc cliente;

drop table cliente;

## tabela itens de venda##

create table iten_venda
(
id_itens_vendas int not null auto_increment primary key,
id_produto int not null, constraint produtos foreign key(id_produto) references produto (id_produto),
qtd_vendas int not null,
id_venda int not null, constraint vendas foreign key(id_venda) references vendas (id_venda)
);

desc iten_venda;


##table de convidados##convidados


desc convidados;


select *from convidados 
tb_solicitacoes


 

##fim!##

create table vendas ( id_venda int not null auto_increment primary key, data_venda date not null, id_cliente int constraint vendacli foreign key (id_cliente) references cliente (id_cliente)  )
create table vendas ( id_venda int not null auto_increment primary key, data_venda date not null, id_cliente int constraint vendacli foreign key (id_cliente) references cliente (id_cliente)  )
