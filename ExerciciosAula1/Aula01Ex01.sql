 CREATE DATABASE db_rh;
 
 USE db_rh;
 
 CREATE TABLE tb_funcionarios(
 id BIGINT AUTO_INCREMENT,
 nome VARCHAR(255) NOT NULL,
 cargo VARCHAR(255) NOT NULL,
 idade INT NOT NULL,
 aniversario DATE,
 salario DECIMAL NOT NULL,
 PRIMARY KEY (id)
 );
 
 ALTER TABLE tb_funcionarios MODIFY salario DECIMAL(8,2);
 
 INSERT INTO tb_funcionarios(nome, cargo, idade, aniversario, salario)
 VALUES ("Kleber","Analista de Sistemas estagiário", 21,"2002-04-25",1500.00);
 INSERT INTO tb_funcionarios(nome, cargo, idade, aniversario, salario)
 VALUES ("Júlia","Analista de Sistemas estagiário", 19,"2005-10-04",1500.00);
  INSERT INTO tb_funcionarios(nome, cargo, idade, aniversario, salario)
 VALUES ("Henrico","Analista de Sistemas Júnior", 28,"2002-04-25",2599.99);
  INSERT INTO tb_funcionarios(nome, cargo, idade, aniversario, salario)
 VALUES ("Marcio","Analista de Sistemas Pleno", 25,"2002-04-25",5599.99);
  INSERT INTO tb_funcionarios(nome, cargo, idade, aniversario, salario)
 VALUES ("Giovanna","Analista de Sistemas Sénior", 31,"2002-04-25",11999.99);
 
SELECT * FROM tb_funcionarios;

SELECT * FROM tb_funcionarios WHERE salario<2000;

SELECT * FROM tb_funcionarios WHERE salario>2000;

UPDATE tb_funcionarios SET salario = 2599.99, cargo ="Analista de Sistemas Júnior" WHERE id = 1 ;

UPDATE tb_funcionarios SET salario = 5599.99, cargo ="Analista de Sistemas Pleno" WHERE id = 3 ;