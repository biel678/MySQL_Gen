 CREATE DATABASE db_quitanda;
 
 USE db_quitanda;
 
 CREATE TABLE tb_produtos(
 id BIGINT AUTO_INCREMENT,
 nome VARCHAR(255) NOT NULL,
 quantidade INT,
 datavalidade DATE,
 preco DECIMAL NOT NULL,
 PRIMARY KEY (id)
 );
 
 INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco)
 VALUES ("tomate",100,"2024-08-20",8.15);
 INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("maçã",20, "2024-08-20", 5.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("laranja",50, "2024-08-20", 10.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("banana",200, "2024-08-20", 12.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("uva",1200, "2024-08-20", 30.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("pêra",500, "2024-08-20", 2.99);

SELECT * FROM tb_produtos;

SELECT nome FROM tb_produtos WHERE id = 5;

SELECT nome FROM tb_produtos WHERE id < 5;

ALTER TABLE tb_produtos MODIFY preco DECIMAL(6,2);

UPDATE tb_produtos SET nome = "café", preco =5.95 WHERE id = 1 ;

ALTER TABLE tb_produtos ADD descricao VARCHAR(255);

ALTER TABLE tb_produtos DROP descricao;