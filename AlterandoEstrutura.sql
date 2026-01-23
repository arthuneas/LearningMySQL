use cadastro;

desc pessoa;

SET SQL_SAFE_UPDATES = 0;

update pessoa
set prof =  ' ' 
where prof is null;

-- == modificando a tabela pessoas == 
alter table pessoa
add column profissao varchar(20); 
drop column profissao;    
add column profissao varchar(20) after nome;
modify column prof varchar(25) not null default ' ';
change column profissao prof varchar(20);
rename to pessoa;

-- == criando nova tabela == 
create table if not exists cursos (
nome varchar(30) not null,
descricao text,
carga int,
totaulas int,
ano year
);

-- == modificando a tabela nova == 
alter table cursos 
modify carga int unsigned,
modify ano year default '2026',
add column idcursos int first,
modify column idcursos int primary key first;


 create table if not exists teste (
id int auto_increment primary key,
nome varchar(20),
idade int
);


insert into teste (nome, idade)
value
('arthur', '19'),
('julia', '20'),
('ana', '29');

desc cursos;
select * from testes;     
show tables;
drop table if exists teste;