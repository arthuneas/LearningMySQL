-- inserindo dados na tabela

use cadastro;
insert into pessoas
-- id fica implicito por ser uma variavel auto incrementavel 
(nome, nascimento, sexo, peso, altura, nacionalidade)
values
('arthur', '2006-04-12', 'M', '80.2', '1.81', 'Brasil'), -- dados são postos entre parenteses
('Maria', '1975-12-22', 'f', '52.3', '1.45', 'EUA'),
('Ana', '2000-07-15', 'f', '75.8', '1.48', default),
('Pedro', '1999-05-30', 'f', '53.1', '1.70', 'Portugal');

-- se quiser adicionar o id, pode-se usar o default, já que é auto_increment 
delete from pessoas where id = 5;

select * from pessoas;
