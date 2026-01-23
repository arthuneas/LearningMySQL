-- um banco de dados armazena instancias de um mesmo objeto
-- pessoas diferentes, são instancias diferentes
-- mas são objetos iguais, porém agrupamos objetos com caracteristicas iguais
-- navio: banco de dados, conteiner: tabelas, conteudo de conteiner: registros
-- banco de dados -> tabelas -> registros -> campos

-- tipos primitivos do sql:
-- numérico: inteiro(TinyInt, Smallint, Int, MediumInt e BigInt), real(Decimal, Float, Double, Real) e lógico(Bit, Boolean)
-- literal: caractere(Char [fixo], VarChar[varia]), texto(TinyText, Text, MediumText, LongText), 
--           binario(TinyBlob, Blob, MediumBlob, LongBlob) e coleção(Enum, Set)
-- Data/Tempo: Date, DateTime, TimeStamp, Time, Year
-- Espacial: Geometry, Point, Polygon, MultiPolygon

-- apos a execução de um comando como a criação do database, voce pode deletar o comando e rodar o restante.


-- criar o banco de dados
CREATE DATABASE cadastro;

-- usar o database criado
USE cadastro;

-- criar tabelas
-- é necessário tipar as variáveis
CREATE TABLE pessoas(
 nome varchar(30),
 idade tinyint,
 sexo char(1), 
 altura float,
 nacionalidade varchar(20)
);

-- exibe a tabela desejada
describe pessoas;











