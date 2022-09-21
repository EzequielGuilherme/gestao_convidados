create database  atividade01

use atividade01

create table funcionario(
id_func int not null auto_increment primary key, 
nome_func varchar(50) not null,
salario_func decimal,
flag_func varchar(1)
);

insert into funcionario (nome_func, salario_func, flag_func) values('Ezequiel', 2000.00, 's');

insert into funcionario (nome_func, salario_func, flag_func) values('Julia', 3500.00, 's');

insert into funcionario (nome_func, salario_func, flag_func) values('Catarina', 1950.00, 's');

insert into funcionario (nome_func, salario_func, flag_func) values('Daniel', 5700.00, 's');

insert into funcionario (nome_func, salario_func, flag_func) values('Guilherme', 2650.00, 'n');

insert into funcionario (nome_func, salario_func, flag_func) values('José', 4790.00, 'n');

insert into funcionario (nome_func, salario_func, flag_func) values('Lucas', 1999.99, 'n');

insert into funcionario (nome_func, salario_func, flag_func) values('Yasmin', 5000.00, 'n');

select*from funcionario 

#scrip#

select id_funcionario as 'Id Funcionario', salario_func as 'Salario Funcionario',
if(frag_func=s,'Funionario ativo', 'Funcionario inativo') 
as Situacao from funcionario; select salario_func 'Salario' 
if(salario_func)>3000, 'salario')  as 'informação' from funcionarios 


select flag_func = s where salario_funcs > 3000 from funcionario

select (salario_func = 3000) where flag_func = S from funcionario

	select id_funcionario, salario_func,
	if(salario_func> 3000 "salrios maiores","menores ")
	from funcionario


SELECT salario_func as 'identificação funcionario', flag_func as 'nome funcionario',
CASE
    WHEN 1 THEN if(salario_func > 3000 'ativo','inativo') ##where  salario_func >3000  as "salarios maiores")
    WHEN 0 THEN 'k' ##if(flag_func = %n 'ativo','inativo') ##where  salario_func >3000  as "salarios maiores")
    ELSE 'ajdbha' end as 'adhabd'
END
FROM funcionarios;



##script certo


 SELECT salario_func AS 'Salário funcinário',
		   flag_func AS 'Nome do Produto',
		   CASE 
				WHEN 1 THEN if(salario_func>3000.00, 'ativo' , 'inativo') 
				WHEN 0 THEN ' Inativo'
		   ELSE 'Conteúdo inválido'
		   end AS 'Mensagem'
	FROM funcionario;







 SELECT salario_func AS 'Salário funcinário',
		   flag_func AS 'Nome do Produto',
		   CASE 
				WHEN 1 THEN if(salario_func>2000.00, 'ativo' , 'inativo') 
				WHEN 0 THEN ' Inativo'
		   ELSE 'Conteúdo inválido'
		   end AS 'Mensagem'
	FROM funcionario;




