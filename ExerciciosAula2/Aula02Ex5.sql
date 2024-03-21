CREATE DATABASE db_construindo_vidas;

DROP DATABASE db_cidade_das_carnes;

USE db_construindo_vidas;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
preco DECIMAL(6,2) NOT NULL,
marca VARCHAR(255) NOT NULL,
categoria BIGINT,
PRIMARY KEY (id)
);

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
uso VARCHAR(255) NOT NULL,
tipo VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

SELECT * FROM tb_produtos;

SELECT * FROM tb_categorias;

SELECT * FROM tb_produtos WHERE preco > 100.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN  70.00 AND 150.00 ;

SELECT * FROM tb_produtos WHERE marca LIKE "%c%";

SELECT nome, preco, marca, tb_categorias.uso, tb_categorias.tipo 
FROM tb_produtos
INNER JOIN tb_categorias
ON tb_produtos.categoria = tb_categorias.id;

SELECT nome, preco, marca, tb_categorias.uso, tb_categorias.tipo 
FROM tb_produtos
INNER JOIN tb_categorias
ON tb_produtos.categoria = tb_categorias.id
WHERE marca = "Suvenil";

INSERT INTO tb_produtos (nome,preco,marca,categoria)
VALUE("Tinta antimofo",70.00,"Coral",2);
INSERT INTO tb_produtos (nome,preco,marca,categoria)
VALUE("Tinta acrílica",85.00,"Coral",3);
INSERT INTO tb_produtos (nome,preco,marca,categoria)
VALUE("Cimento",60.00,"Eco build",5);
INSERT INTO tb_produtos (nome,preco,marca,categoria)
VALUE("Tijolo",95.00,"Eco build",1);
INSERT INTO tb_produtos (nome,preco,marca,categoria)
VALUE("Tinta epóxi",70.00,"Suvenil",1);
INSERT INTO tb_produtos (nome,preco,marca,categoria)
VALUE("Tinta antimofo premium",150.00,"Suvenil",1);
INSERT INTO tb_produtos (nome,preco,marca,categoria)
VALUE("Tinta acrílica premium",110.00,"Suvenil",3);
INSERT INTO tb_produtos (nome,preco,marca,categoria)
VALUE("Massa corrida",90.00,"Eco build",4);

INSERT INTO tb_categorias (uso,tipo)
VALUE("casa","pintura");
INSERT INTO tb_categorias (uso,tipo)
VALUE("casa","reparo");
INSERT INTO tb_categorias (uso,tipo)
VALUE("fora de casa","pintura");
INSERT INTO tb_categorias (uso,tipo)
VALUE("fora de casa","reparo");
INSERT INTO tb_categorias (uso,tipo)
VALUE("qualquer local","constução");

ALTER TABLE tb_produtos ADD CONSTRAINT fk_categoria 
FOREIGN KEY (categoria) REFERENCES tb_categorias (id);