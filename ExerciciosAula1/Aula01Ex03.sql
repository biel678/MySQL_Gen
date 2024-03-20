CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudante(
 id BIGINT AUTO_INCREMENT,
 nome VARCHAR(255) NOT NULL,
 idade INT NOT NULL,
 aniversario DATE,
 serie VARCHAR(255) NOT NULL,
 nota DECIMAL NOT NULL,
 PRIMARY KEY (id)
);

 ALTER TABLE tb_estudante MODIFY nota DECIMAL(6,2);

 INSERT INTO tb_estudante(nome, idade, aniversario, serie, nota)
 VALUES ("Ricardo",5, "2002-04-25","pré1",7.5);
  INSERT INTO tb_estudante(nome, idade, aniversario, serie, nota)
 VALUES ("Mario",8, "2002-07-12","segundo ano",9.0);
  INSERT INTO tb_estudante(nome, idade, aniversario, serie, nota)
 VALUES ("Joana",7, "2002-01-05","primeiro ano",10.00);
  INSERT INTO tb_estudante(nome, idade, aniversario, serie, nota)
 VALUES ("Danna",8, "2002-02-28","segundo ano",7.75);
  INSERT INTO tb_estudante(nome, idade, aniversario, serie, nota)
 VALUES ("Larissa",12, "2002-03-15","sexto ano",6.00);
  INSERT INTO tb_estudante(nome, idade, aniversario, serie, nota)
 VALUES ("Pedro",15, "2002-06-08","nono ano",8.75);
  INSERT INTO tb_estudante(nome, idade, aniversario, serie, nota)
 VALUES ("Maykon",10, "2002-10-30","quarto ano",5.99);
  INSERT INTO tb_estudante(nome, idade, aniversario, serie, nota)
 VALUES ("Thais",9, "2002-09-06","terceiro ano",4.99);
 
 SELECT * FROM tb_estudante;
 
SELECT * FROM tb_estudante WHERE nota>7;

SELECT * FROM tb_estudante WHERE nota<7;

UPDATE tb_estudante SET nota = 10 WHERE id = 6 ;