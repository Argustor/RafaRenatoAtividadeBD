DROP DATABASE IF EXISTS skate_or_die;
CREATE DATABASE skate_or_die;

USE skate_or_die;

DROP TABLE IF EXISTS cliente, endereco, cidade, estado;

CREATE TABLE estado ( -- Criar Tabela estado
id INT NOT NULL  AUTO_INCREMENT
,nome VARCHAR (200) NOT NULL UNIQUE
,sigla CHAR (2) NOT NULL UNIQUE
,CONSTRAINT pk_estado PRIMARY KEY (id)
);
CREATE TABLE cidade ( -- Criar Tabela cidade
id INT NOT NULL  AUTO_INCREMENT
,nome VARCHAR (200) NOT NULL
,estado_id INT NOT NULL 
,CONSTRAINT pk_cidade PRIMARY KEY (id)
,CONSTRAINT fk_cidade_estado FOREIGN KEY (estado_id) REFERENCES estado (id) 
);
CREATE TABLE endereco( -- Criar Tabela endereço

id INT NOT NULL AUTO_INCREMENT
,rua VARCHAR (200) NOT NULL
,numero VARCHAR (4) NOT NULL
,cidade_id INT NOT NULL
,CONSTRAINT pk_endereco PRIMARY KEY (id)
,CONSTRAINT fk_cidade FOREIGN KEY (cidade_id) REFERENCES cidade (id)
);
CREATE TABLE cliente(	-- Criar Tabela do Cliente
	
id INT NOT NULL  AUTO_INCREMENT
,nome VARCHAR (200) NOT NULL
,telefone VARCHAR (11) NOT NULL UNIQUE
,email VARCHAR(200) NOT NULL UNIQUE
,endereco_id INT NOT NULL
,CONSTRAINT pk_cliente PRIMARY KEY (id)
,CONSTRAINT fk_endereco FOREIGN KEY (endereco_id) REFERENCES endereco (id)

); 

INSERT INTO estado (nome, sigla) VALUES ('RONDONIA', 'RO');
INSERT INTO estado (nome, sigla) VALUES ('PARANA', 'PR');
INSERT INTO estado (nome, sigla) VALUES ('RIO DE JANEIRO', 'SP');
INSERT INTO cidade (nome, estado_id) VALUES ('PORTO VELHO', 1);
INSERT INTO cidade (nome, estado_id) VALUES ('ALTO PARANA', 2);
INSERT INTO cidade (nome, estado_id) VALUES ('PETROPOLIS', 3);
INSERT INTO endereco (rua, numero, cidade_id) VALUES ('ANTONIO VIVALDI', '6783', 1);
INSERT INTO endereco (rua, numero, cidade_id) VALUES ('ITAQUERA', '666', 2);
INSERT INTO endereco (rua, numero, cidade_id) VALUES ('JACARÉPAGUA', '69', 3);
INSERT INTO cliente (nome, telefone, email, endereco_id) VALUES ('RENATO AUGUSTO', '6992426969', 'renatoplatz11@example.com', 1);
INSERT INTO cliente (nome, telefone, email, endereco_id) VALUES ('RAFAEL SANCHES', '2345678696', 'rafasanches@example.com', 1);
INSERT INTO cliente (nome, telefone, email, endereco_id) VALUES ('JULIUS CARACA', '40028922699', 'JULIUS@example.com', 1);


SELECT * FROM cliente;

