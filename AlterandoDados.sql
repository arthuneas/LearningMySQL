-- modificando dados na tabela

use cadastro;

-- definimos a linguagem para portugues
-- modificamos o database
alter database cadastro
	character set utf8mb4
	collate utf8mb4_general_ci;
    
-- modificamos a tabela
alter table pessoas 
add id int not null auto_increment primary key first,
modify column id int not null auto_increment,
modify nome varchar(30) Not Null,
modify sexo enum('m', 'f'), 
modify peso decimal(5, 2), 
modify altura decimal(3,2),
modify nacionalidade varchar(20) default 'Brasil',
add nascimento DATE, -- adiciona coluna nascimento
drop column idade; -- remove a coluna idade