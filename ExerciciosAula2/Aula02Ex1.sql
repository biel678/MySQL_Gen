CREATE DATABASE db_generation_game_online;
DROP DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_personagens(
    id BIGINT AUTO_INCREMENT,
    nomePersonagem VARCHAR(255) NOT NULL,
    nivelPersonagem INT NOT NULL,
    danoPersonagem INT,
    defesaPersonagem INT,
    classePersonagem BIGINT NOT NULL,
    PRIMARY KEY (id)
	);

CREATE TABLE tb_classes(
    id BIGINT AUTO_INCREMENT,
    nomeClasse VARCHAR(255) NOT NULL,
    categoriaClasse VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
    );
    
SELECT * FROM tb_personagens WHERE danoPersonagem > 2000;

SELECT * FROM tb_personagens WHERE defesaPersonagem BETWEEN  1000 AND 2000 ;

SELECT * FROM tb_personagens WHERE nomePersonagem LIKE "%c%";

SELECT nomePersonagem, nivelPersonagem, danoPersonagem, defesaPersonagem,tb_classes.nomeClasse, tb_classes.categoriaClasse 
FROM tb_personagens
INNER JOIN tb_classes
ON tb_personagens.classePersonagem = tb_classes.id;

SELECT nomePersonagem, nivelPersonagem, danoPersonagem, defesaPersonagem,tb_classes.categoriaClasse, tb_classes.nomeClasse 
FROM tb_personagens  
INNER JOIN tb_classes
ON tb_personagens.classePersonagem = tb_classes.id 
WHERE nomeClasse = "mago";

SELECT * FROM tb_personagens;

SELECT * FROM tb_classes;
    
ALTER TABLE tb_personagens ADD CONSTRAINT fk_classes_personagens 
FOREIGN KEY (classePersonagem) REFERENCES tb_classes (id);

INSERT INTO tb_classes (nomeClasse, categoriaClasse)
VALUE ("Mago","Dano");
INSERT INTO tb_classes (nomeClasse, categoriaClasse)
VALUE ("ladino","Dano");
INSERT INTO tb_classes (nomeClasse, categoriaClasse)
VALUE ("Clérigo","Suporte");
INSERT INTO tb_classes (nomeClasse, categoriaClasse)
VALUE ("Bardo","Suporte");
INSERT INTO tb_classes (nomeClasse, categoriaClasse)
VALUE ("Guerreiro","Tanque");

INSERT INTO tb_personagens (nomePersonagem, nivelPersonagem, danoPersonagem,defesaPersonagem,classePersonagem)
VALUE ("Law",8,8000,1000,1);
INSERT INTO tb_personagens (nomePersonagem, nivelPersonagem, danoPersonagem,defesaPersonagem,classePersonagem)
VALUE ("Astario",8,6500,50,2);
INSERT INTO tb_personagens (nomePersonagem, nivelPersonagem, danoPersonagem,defesaPersonagem,classePersonagem)
VALUE ("Gale",6,5500,1500,1);
INSERT INTO tb_personagens (nomePersonagem, nivelPersonagem, danoPersonagem,defesaPersonagem,classePersonagem)
VALUE ("Will",8,1000,1000,4);
INSERT INTO tb_personagens (nomePersonagem, nivelPersonagem, danoPersonagem,defesaPersonagem,classePersonagem)
VALUE ("Shadowheart",8,500,8000,3);
INSERT INTO tb_personagens (nomePersonagem, nivelPersonagem, danoPersonagem,defesaPersonagem,classePersonagem)
VALUE ("Lae'zel",8,2500,3000,5);
INSERT INTO tb_personagens (nomePersonagem, nivelPersonagem, danoPersonagem,defesaPersonagem,classePersonagem)
VALUE ("Halsin",8,750,5000,3);
INSERT INTO tb_personagens (nomePersonagem, nivelPersonagem, danoPersonagem,defesaPersonagem,classePersonagem)
VALUE ("Karlach",8,2800,2700,5);
