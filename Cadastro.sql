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


-- criar o banco de dados
CREATE DATABASE cadastro;

use cadastro;

-- criar tabelas
-- é necessário tipar as variáveis
CREATE TABLE pessoas(
nome varchar(30),
idade tinyint(3),
sexo char(1), 
peso float,
altura float,
nacionalidade varchar(20)
);
