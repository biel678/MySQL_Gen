CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_pizzas(
id BIGINT AUTO_INCREMENT,
tamanho VARCHAR(255) NOT NULL,
preco DECIMAL(6,2) NOT NULL,
sabor VARCHAR(255) NOT NULL,
categoriaPizza BIGINT NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
veg VARCHAR(255) NOT NULL,
Categoria VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);
    
ALTER TABLE tb_pizzas ADD CONSTRAINT fk_categoria 
FOREIGN KEY (categoriaPizza) REFERENCES tb_categorias (id);

SELECT * FROM tb_pizzas;

SELECT * FROM tb_categorias;

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN  50.00 AND 100.00 ;

SELECT * FROM tb_pizzas WHERE sabor LIKE "%m%";

SELECT tamanho, preco, sabor, tb_categorias.Categoria, tb_categorias.veg 
FROM tb_pizzas
INNER JOIN tb_categorias
ON tb_pizzas.categoriaPizza = tb_categorias.id;

SELECT tamanho, preco, sabor, tb_categorias.Categoria, tb_categorias.veg 
FROM tb_pizzas
INNER JOIN tb_categorias
ON tb_pizzas.categoriaPizza = tb_categorias.id
WHERE tb_categorias.veg ="Vegetariana" OR tb_categorias.veg ="Vegana";

INSERT INTO tb_categorias (Categoria,veg)
VALUE("Salgada","Não Vegetariana");
INSERT INTO tb_categorias (Categoria,veg)
VALUE("Salgada","Vegetariana");
INSERT INTO tb_categorias (Categoria,veg)
VALUE("Salgada","Vegana");
INSERT INTO tb_categorias (Categoria,veg)
VALUE("Doce","Não Vegetariana");
INSERT INTO tb_categorias (Categoria,veg)
VALUE("Doce","Vegetariana");

INSERT INTO tb_pizzas(tamanho,preco,sabor,categoriaPizza)
VALUE("grande",44.99,"Mussarela",1);
INSERT INTO tb_pizzas(tamanho,preco,sabor,categoriaPizza)
VALUE("grande",44.99,"Calabresa",2);
INSERT INTO tb_pizzas(tamanho,preco,sabor,categoriaPizza)
VALUE("Médio",49.99,"Portuguesa",1);
INSERT INTO tb_pizzas(tamanho,preco,sabor,categoriaPizza)
VALUE("Médio",49.99,"Brócolis",1);
INSERT INTO tb_pizzas(tamanho,preco,sabor,categoriaPizza)
VALUE("Médio",59.99,"Chocolate",5);
INSERT INTO tb_pizzas(tamanho,preco,sabor,categoriaPizza)
VALUE("pequena",69.99,"Churros",5);
INSERT INTO tb_pizzas(tamanho,preco,sabor,categoriaPizza)
VALUE("pequena",69.99,"Fondue de carne",4);
INSERT INTO tb_pizzas(tamanho,preco,sabor,categoriaPizza)
VALUE("pequena",59.99,"Broto de Tofu",3);