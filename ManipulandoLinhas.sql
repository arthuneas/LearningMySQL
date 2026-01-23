use cadastro;

ALTER TABLE cursos
MODIFY idcursos INT AUTO_INCREMENT;

select * from pessoa;

insert into cursos (nome, descricao, carga, totaulas, ano)
value 
('HTML5', 'Curso de HTML5', 40, 37, 2014),
('Photoshop', 'Dicas de Photoshop CC', 10, 8, 2014),
('Jarva', 'Introdução à Linguagem Java', 10, 29, 2000),
('MySQL', 'Bancos de Dados MySQL', 30, 15, 2016),
('Word', 'Curso completo de Word', 40, 30, 2016),
('Algoritmos', 'Logica de Programação', '20', '15', '2024');

-- update: atualiza linhas

update cursos
set nome = 'Java'
where idcursos = '3';

update cursos 
set nome = 'Java Basico', ano = '2026'
where idcursos = 3;

-- usar o limite afeta a quantidade de linhas influenciadas pelo comando
update cursos 
set nome = 'PHP', descricao = 'Introdução a Linguagem PHP', carga = '40'
where idcursos = 3 
limit 1; -- limita a quantidade de linhas

update cursos 
set ano = 2050
where idcursos in (4, 5, 6);

update cursos 
set carga = 40
where ano in (2025, 2023);


-- delete: apaga apenas uma linha
delete from cursos 
where idcursos = 7;

delete from cursos
where ano = 2023 limit 1;


-- truncate: apaga todas as linhas, a tabela existe, mas os dados são apagados
truncate cursos;

select * from cursos;