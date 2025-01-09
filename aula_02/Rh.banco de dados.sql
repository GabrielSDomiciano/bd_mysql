CREATE DATABASE melhor_rh;
USE melhor_rh;

CREATE TABLE tb_funcionarios(
    id bigint auto_increment,
    nome varchar(255) not null,
    cargo VARCHAR (255),
    salario DECIMAL(10,2),
    data_admissao DATE NOT NULL,
    PRIMARY KEY(id)
);

INSERT INTO tb_funcionarios (nome, cargo, salario, data_admissao)
VALUES ("gustavo", "dev back-end",3000.00,"2023-06-05"),
	   ("gabriel", "dev front-end",1000.00,"2023-04-02"),
       ("bruna", "dev front-end",1000.00,"2023-07-05"),
       ("luiz", "dev fullstack",4000.00,"2023-04-02"),
       ("guto", "dev jogos",30000.00,"2023-01-01");
       
SELECT * FROM tb_funcionarios;

SELECT * FROM tb_funcionarios WHERE salario > 2000.00;

SELECT * FROM tb_funcionarios WHERE salario < 2000.00;

UPDATE tb_funcionarios SET salario = 1950.00 WHERE	id = 5;


ALTER TABLE tb_funcionarios
MODIFY COLUMN cargo VARCHAR(255);

       
       
       
