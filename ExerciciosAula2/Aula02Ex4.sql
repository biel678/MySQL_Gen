CREATE DATABASE db_cidade_das_carnes;

DROP DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
corte VARCHAR(255) NOT NULL,
preco DECIMAL(6,2) NOT NULL,
linha VARCHAR(255) NOT NULL,
categoria BIGINT,
PRIMARY KEY (id)
);

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
animal VARCHAR(255) NOT NULL,
tipo VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

SELECT * FROM tb_produtos;

SELECT * FROM tb_categorias;

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN  50.00 AND 150.00 ;

SELECT * FROM tb_produtos WHERE corte LIKE "%c%";

SELECT corte, preco, linha, tb_categorias.animal, tb_categorias.tipo 
FROM tb_produtos
INNER JOIN tb_categorias
ON tb_produtos.categoria = tb_categorias.id;

SELECT corte, preco, linha, tb_categorias.animal, tb_categorias.tipo 
FROM tb_produtos
INNER JOIN tb_categorias
ON tb_produtos.categoria = tb_categorias.id
WHERE linha = "Segunda linha";

INSERT INTO tb_produtos (corte,preco,linha,categoria)
VALUE("cupim",70.00,"Segunda linha",1);
INSERT INTO tb_produtos (corte,preco,linha,categoria)
VALUE("lombo",94.80,"Segunda linha",2);
INSERT INTO tb_produtos (corte,preco,linha,categoria)
VALUE("bisteca",38.90,"Terceira linha",2);
INSERT INTO tb_produtos (corte,preco,linha,categoria)
VALUE("acém",20.90,"Terceira linha",1);
INSERT INTO tb_produtos (corte,preco,linha,categoria)
VALUE("Salmão",80.00,"Primeira linha",3);
INSERT INTO tb_produtos (corte,preco,linha,categoria)
VALUE("Camarão",100.00,"Primeira linha",5);
INSERT INTO tb_produtos (corte,preco,linha,categoria)
VALUE("Asa",35.00,"Segunda linha",4);
INSERT INTO tb_produtos (corte,preco,linha,categoria)
VALUE("Sobrecoxa",42.30,"Primeira linha",4);

INSERT INTO tb_categorias (animal,tipo)
VALUE("vaca","carne vermelha");
INSERT INTO tb_categorias (animal,tipo)
VALUE("porco","carne vermelha");
INSERT INTO tb_categorias (animal,tipo)
VALUE("peixe","carne branca");
INSERT INTO tb_categorias (animal,tipo)
VALUE("frango","carne branca");
INSERT INTO tb_categorias (animal,tipo)
VALUE("crustacio","frutos do mar");

ALTER TABLE tb_produtos ADD CONSTRAINT fk_categoria 
FOREIGN KEY (categoria) REFERENCES tb_categorias (id);