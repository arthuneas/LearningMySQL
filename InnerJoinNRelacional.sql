-- ACID: regras de uma boa transação (ação de um banco de dados)
-- A - atomicidade: não pode ser dividida, tudo deve ser completo
-- C - consistencia: não pode ocorrer falhas dirante uma transação
-- I - isolamento: ações paralelas não podem afetar uma a outra
-- D - durabilidade: o dado precisa ser durável o quanto necessário, dados não podem ser perdidos

-- Relacional: usuários(entidade):n -> prefere(relacionamento) ->  1:curso(entidade), relacionamento de um para muitos
-- vamos trazer a chave primaria de curso para usuários, a chave precisa ter o mesmo tipo e o mesmo tamanho

-- adicionaremos o cursopreferido como atributo na tabela usuarios

use cadastro;

describe usuarios;

-- adicionar campo na tabela
alter table usuarios
add column cursopreferido int;

-- criar chave estrangeira
alter table usuarios
add foreign key (cursopreferido) -- ligacao de chaves
references cursos(idcurso); -- referenciação/relacao com idcursos em cursopreferido, chave multipla em desc

select * from usuarios;
select * from cursos;

-- atribuindo curso prefertido a um usuario
update usuarios set cursopreferido = '6' 
where id = '1';

-- obs: pode fazer os updates no workbench automaticamente

-- integridade referencial
-- não é possível deletar uma chave multipla quando há relações, ou seja, 
-- se há cursos que são preferidos para usuarios, primeiro é preciso efetivar um desvinculo para deletar o curso
-- quando um curso não se relaciona, não é preferido para ninguem, pode ser apagado
delete from cursos
where idcurso = '9'; -- válido, visto que curso 9 não está relacionado em campo de

-- joins

-- exibir os dados de curso preferido, exibir além do id
-- queremos juntar select nome, cursopreferido from usuarios; com select nome, ano from cursos;
-- o inner join mostra apenas os que se relacionam
select u.nome, u.cursopreferido, c.nome, c.ano
from usuarios as u inner join cursos as c -- podemos adicionar com INNER JOIN e apelidar as tabelas usando o AS
on c.idcurso = u.cursopreferido -- precisamos indicar o relacionamento, sem o ON o join não faz sentido
order by u.nome;


-- alter join expoe todos, inclusive quem não tem preferencia
select u.nome, u.cursopreferido, c.nome, c.ano
from usuarios as u left outer join cursos as c -- devemos indicar a preferencia da posicao da tabela: left ou right
on c.idcurso = u.cursopreferido 
order by u.nome;

select u.nome, u.cursopreferido, c.nome, c.ano
from usuarios as u right join cursos as c -- prioriza a tabela da direita, pode-se deixar o outer implicito
on c.idcurso = u.cursopreferido 
order by u.nome;


-- o relacionamento do banco é muito para muitos
-- criando a nova tabela relacionamentos com as chaves estrangeiras
create table assiste ( -- definindo tabela nova 
id int not null auto_increment primary key, -- definindo chave primaria
data date,
idusuario int,
idcurso int,
foreign key(idusuario) references usuarios(id), -- definindo as chaves estrangeiras
foreign key(idcurso) references cursos(idcurso)
);

desc assiste;


-- inserindo os registros
insert into assiste (data, idusuario, idcurso)
values
('2014-03-03', '1', '2');

delete from assiste
where id in (2, 3, 4, 5);

select * from assiste;


-- Junções
select u.id, u.nome, c.nome from usuarios u
join assiste a
on u.id = a.idusuario
join cursos c
on a.idcurso = c.idcurso
order by u.nome;
