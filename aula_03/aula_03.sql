CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id bigint AUTO_INCREMENT,
tipos varchar(255) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE tb_pizzas(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
preco decimal(6, 2),
descricao VARCHAR (255),
categoria_id bigint, 
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias( tipos)
VALUES ("Salgado"),
("Doce"),
("Vegana"),
("Gourmet"),
("Classica");

INSERT INTO tb_pizzas (nome, preco, descricao, categoria_id)
VALUES ("Calabresa", 60.00, "Molho, Calabresa e Cebola", 1 ),

 ("Mussarela", 70.00, "Molho, Mussarela e Oregano", 1 ),
 
 ("Banana", 80.00, "Banana, Leite Condensado", 2 ),
 
 ("Oreo", 90.00, "Bolacha, Chocolate e Coco" 2),
 
 ("Mussarela de Bufallo,", 180.00, "Molho, Mussarela, Louro", 4),
 
 ("Quatro queijos", 85.00, "Molho, Parmesao, Bri, Gongorzola, Mussarela", 5),
 
 ('Vegana Especial', 55.00, 'Molho, Tomate Seco, Rúcula, Azeitonas', 3),
 
('Frango com Catupiry', 65.00, 'Molho, Frango, Catupiry, Orégano', 1);

SELECT * FROM tb_pizzas WHERE preco > 45.00;


SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;


SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';


SELECT 
    p.nome AS NomePizza, 
    p.preco AS PrecoPizza, 
    p.descricao AS Descricao, 
    c.tipos AS Categoria 
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.categoria_id = c.id;


SELECT 
    p.nome AS NomePizza, 
    p.preco AS PrecoPizza, 
    p.descricao AS Descricao, 
    c.tipos AS Categoria 
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.categoria_id = c.id
WHERE c.tipos = 'Doce';
 
