CREATE DATABASE db_farmacia_bem_estar;

DROP DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nomeRemedio VARCHAR(255) NOT NULL,
preco DECIMAL(6,2) NOT NULL,
receita VARCHAR(255) NOT NULL,
categoriaProduto BIGINT NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
categoria VARCHAR(255) NOT NULL,
generico VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

SELECT * FROM tb_produtos;

SELECT * FROM tb_categorias;

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN  5.00 AND 60.00 ;

SELECT * FROM tb_produtos WHERE nomeRemedio LIKE "%c%";

SELECT nomeRemedio, preco, receita, tb_categorias.categoria, tb_categorias.generico 
FROM tb_produtos
INNER JOIN tb_categorias
ON tb_produtos.categoriaProduto = tb_categorias.id;

SELECT nomeRemedio, preco, receita, tb_categorias.categoria, tb_categorias.generico 
FROM tb_produtos
INNER JOIN tb_categorias
ON tb_produtos.categoriaProduto = tb_categorias.id
WHERE tb_categorias.generico = "genérico";

ALTER TABLE tb_produtos ADD CONSTRAINT fk_categoria 
FOREIGN KEY (categoriaProduto) REFERENCES tb_categorias (id);

INSERT INTO tb_produtos(nomeRemedio,preco,receita,categoriaProduto)
VALUE("Dorflex",20.99,"sem receita",1);
INSERT INTO tb_produtos(nomeRemedio,preco,receita,categoriaProduto)
VALUE("protex",10.99,"sem receita",5);
INSERT INTO tb_produtos(nomeRemedio,preco,receita,categoriaProduto)
VALUE("Tarja preta",119.99,"com receita",2);
INSERT INTO tb_produtos(nomeRemedio,preco,receita,categoriaProduto)
VALUE("PainFlex",9.99,"sem receita",2);
INSERT INTO tb_produtos(nomeRemedio,preco,receita,categoriaProduto)
VALUE("Tictac",4.99,"sem receita",4);
INSERT INTO tb_produtos(nomeRemedio,preco,receita,categoriaProduto)
VALUE("Holla",12.99,"sem receita",5);
INSERT INTO tb_produtos(nomeRemedio,preco,receita,categoriaProduto)
VALUE("oxicodona",220.99,"com receita",1);
INSERT INTO tb_produtos(nomeRemedio,preco,receita,categoriaProduto)
VALUE("bis",2.99,"sem receita",4);

INSERT INTO tb_categorias(categoria,generico)
VALUE("remédio","não genérico");
INSERT INTO tb_categorias(categoria,generico)
VALUE("remédio","genérico");
INSERT INTO tb_categorias(categoria,generico)
VALUE("cosmético","não genérico");
INSERT INTO tb_categorias(categoria,generico)
VALUE("doce","não genérico");
INSERT INTO tb_categorias(categoria,generico)
VALUE("preservativo","não genérico");