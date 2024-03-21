CREATE DATABASE db_curso_da_minha_vida;
DROP DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_cursos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
preco DECIMAL(6,2) NOT NULL,
tecnologia VARCHAR(255) NOT NULL,
categoria BIGINT,
PRIMARY KEY (id)
);

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
emprego VARCHAR(255) NOT NULL,
tipo VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

SELECT * FROM tb_cursos;

SELECT * FROM tb_categorias;

SELECT * FROM tb_cursos WHERE preco > 500.00;

SELECT * FROM tb_cursos WHERE preco BETWEEN  600.00 AND 1000.00 ;

SELECT * FROM tb_cursos WHERE tecnologia LIKE "%j%";

SELECT nome, preco, tecnologia, tb_categorias.emprego, tb_categorias.tipo 
FROM tb_cursos
INNER JOIN tb_categorias
ON tb_cursos.categoria = tb_categorias.id;

SELECT nome, preco, tecnologia, tb_categorias.emprego, tb_categorias.tipo 
FROM tb_cursos
INNER JOIN tb_categorias
ON tb_cursos.categoria = tb_categorias.id
WHERE tecnologia != "Java";

INSERT INTO tb_cursos (nome,preco,tecnologia,categoria)
VALUE("Java básico",150.00,"Java",1);
INSERT INTO tb_cursos (nome,preco,tecnologia,categoria)
VALUE("Java bootcamp",5000.00,"Java",2);
INSERT INTO tb_cursos (nome,preco,tecnologia,categoria)
VALUE("Java Avançado",800.00,"Java",3);
INSERT INTO tb_cursos (nome,preco,tecnologia,categoria)
VALUE("FullStack básico",200.00,"Variado",1);
INSERT INTO tb_cursos (nome,preco,tecnologia,categoria)
VALUE("FullStack bootcamp",700.00,"Variado",4);
INSERT INTO tb_cursos (nome,preco,tecnologia,categoria)
VALUE("FullStack Avançado",2000.00,"Variado",5);
INSERT INTO tb_cursos (nome,preco,tecnologia,categoria)
VALUE("Análise de dados bootcamp",5000.00,"Python e SQL",5);
INSERT INTO tb_cursos (nome,preco,tecnologia,categoria)
VALUE("Análise de dados Avançado",900.00,"Python e SQL",3);

INSERT INTO tb_categorias (emprego,tipo)
VALUE("não","iniciante");
INSERT INTO tb_categorias (emprego,tipo)
VALUE("não","bootcamp");
INSERT INTO tb_categorias (emprego,tipo)
VALUE("não","profissionalizante");
INSERT INTO tb_categorias (emprego,tipo)
VALUE("sim","bootcamp");
INSERT INTO tb_categorias (emprego,tipo)
VALUE("sim","profissionalizante");

ALTER TABLE tb_cursos ADD CONSTRAINT fk_categoria 
FOREIGN KEY (categoria) REFERENCES tb_categorias (id);