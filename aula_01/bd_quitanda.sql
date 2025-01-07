CREATE DATABASE db_quitanda;

USE db_quitanda;

CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
quantidade int, 
data_validade date,
preco decimal NOT NULL, 
PRIMARY KEY (id)
);

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES ("tomate",100, "2022-04-10", 8.00);

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES ("maçã",20, "2022-04-12", 5.00);

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES ("laranja",50, "2022-04-10", 10.00);

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES ("banana",200, "2022-04-13", 12.00);

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES ("uva",1200, "2022-04-14", 30.00);

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES ("pêra",500, "2022-04-15", 2.90);

SELECT * FROM tb_produtos;

SELECT nome, preco FROM tb_produtos;

SELECT nome, CONCAT('R$ ', FORMAT(preco, 2, 'pt_BR')) AS preço FROM tb_produtos;

SELECT nome, DATE_FORMAT(data_validade, '%d/%m/%Y') AS Data_Validade FROM tb_produtos;

SELECT * FROM tb_produtos WHERE id = 1;

SELECT * FROM tb_produtos WHERE preco > 5.00;

SELECT * FROM tb_produtos WHERE nome = "maçã";

SELECT * FROM tb_produtos WHERE nome = "maçã" OR preco > 5.00;

ALTER TABLE tb_produtos ADD descricao varchar(255);


ALTER TABLE tb_produtos MODIFY preco decimal(6, 2);

ALTER TABLE tb_produtos DROP descricao;

SET SQL_SAFE_UPDATES = 0;

SET SQL_SAFE_UPDATES = 1;

UPDATE tb_produtos SET preco = 10.00 WHERE id = 1;

DELETE FROM tb_produtos WHERE id = 2;



-- Visualizar a estrutura da tabela
DESC tb_produtos;

-- Esqueceu de definir a chave primária da tabela
ALTER TABLE tb_produtos ADD PRIMARY KEY (id);

-- Modificar o nome de um Atributo da Tabela
ALTER TABLE tb_produtos CHANGE nome nomeproduto varchar(255);

-- Apagar todos os dados da tabela (Não é possível desfazer)
DELETE FROM tb_produtos;

-- Descobrir a Collation do Banco de dados
SELECT @@collation_database;

-- Apagar a tabela
DROP TABLE tb_produtos;

-- Apagar o Banco
DROP DATABASE db_quitanda;

