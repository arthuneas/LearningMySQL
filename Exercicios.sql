-- exercicio 1: lista de nome dos usuarios
select nome from usuarios
order by nome; -- ordenado alfabeticamente


-- exercicio 2: lista de nascimentos entre 01/01/2000 e 31/12/2015
select * from usuarios
where nascimento between '2000-01-01' and '2015-12-31';


-- lista de todos os homens que trabalham como programador
select * from usuarios
where profissao = 'Programador' and sexo = 'M';


-- lista com mulheres que nascera no brasil e nome iniciando J
select * from usuarios
where nacionalidade = 'brasil' 
and nome like 'J%'
and sexo = 'f'
order by nome;


-- lista com nome e nacionalidade de todos os homens com silva no nome, estrangeiros e pesam menos de 100kg
select nome, nacionalidade from usuarios
where nacionalidade <> 'brasil'
and nome like '%Silva%'
and peso < '100'
and sexo = 'm'
order by nome;


-- quem tem a maior altura entre os usuarios homens brasileiros
select nome, altura from usuarios
where altura = (select max(altura) from usuarios where nacionalidade = 'brasil' and sexo = 'm') -- procura na tabela
and sexo = 'm'
and nacionalidade = 'brasil';


-- media dos pesos entre os usuarios
select avg(peso) from usuarios;


-- menor peso entre mulheres estrangeiras nascidas entre 1990-01-01 e 2000-12-31
select nome, peso from usuarios 
where peso = (select min(peso) from usuarios where sexo = 'f' and nacionalidade <> 'brasil' and nascimento between '1990-01-01' and '2000-12-31')
and sexo = 'f' 
and nacionalidade <> 'brasil'
and nascimento between '1990-01-01' and '2000-12-31';


-- quantidade de mulheres com mais de 1,90
select count(*) from usuarios
where sexo = 'f'
and altura > '1.90';


-- lista mostrando o pais de origem e o total de pessoas de usuarios estrangeiros. precisa-se que mais de 3 usuarios sejam da nacionalidade
select nacionalidade, count(*) from usuarios
where nacionalidade <> 'brasil'
group by nacionalidade
having count(*) > 3
order by nacionalidade;


-- uma lista agrupada pela altura dos usuarios mostrando quantas pessoas pesam mais de 100kg e que estao acima da media 
select altura, count(*) from usuarios
where peso > 100
group by altura
having altura > (select avg(altura) from usuarios);


