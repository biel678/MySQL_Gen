CREATE DATABASE db_ecom;

USE db_ecom;

CREATE TABLE tb_produtos(
 id BIGINT AUTO_INCREMENT,
 nome VARCHAR(255) NOT NULL,
 quantidade INT,
 uso VARCHAR(255) NOT NULL,
 vendedor VARCHAR(255) NOT NULL,
 preco DECIMAL NOT NULL,
 PRIMARY KEY (id)
);

 ALTER TABLE tb_produtos MODIFY preco DECIMAL(6,2);

 INSERT INTO tb_produtos(nome, quantidade, uso, vendedor, preco)
 VALUES ("Lixeira eletrônica",500, "casa","Amazônia",149.99);
  INSERT INTO tb_produtos(nome, quantidade, uso, vendedor, preco)
 VALUES ("Escrivaninha",200, "casa","Amazônia",249.99);
  INSERT INTO tb_produtos(nome, quantidade, uso, vendedor, preco)
 VALUES ("Shorts de academia",500, "vestimenta/calçados","Amazônia",149.99);
  INSERT INTO tb_produtos(nome, quantidade, uso, vendedor, preco)
 VALUES ("Sneaker",100, "vestimenta/calçados","Amazônia",799.99);
  INSERT INTO tb_produtos(nome, quantidade, uso, vendedor, preco)
 VALUES ("Vídeo game - Muda",1100, "tecnologia","NãoIntendo",1499.99);
  INSERT INTO tb_produtos(nome, quantidade, uso, vendedor, preco)
 VALUES ("Vídeo game - Ponto de jogo",300, "tecnologia","Cony",4449.99);
  INSERT INTO tb_produtos(nome, quantidade, uso, vendedor, preco)
 VALUES ("Fralda",1000, "crianças","Kiddik",49.99);
  INSERT INTO tb_produtos(nome, quantidade, uso, vendedor, preco)
 VALUES ("Pijama de ursinho",700, "crianças","Kiddik",129.99);
 
 SELECT * FROM tb_produtos;
 
SELECT * FROM tb_produtos WHERE preco>500;

SELECT * FROM tb_produtos WHERE preco<500;

UPDATE tb_produtos SET quantidade = 15, preco = 79.99 WHERE id = 1 ;