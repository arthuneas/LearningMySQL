CREATE DATABASE loja;

USE loja;

CREATE TABLE produtos (
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    preco DECIMAL(10, 2)
);

INSERT INTO produtos (nome, preco) VALUES ('Notebook Gamer', 4500.00);

SELECT * FROM produtos;