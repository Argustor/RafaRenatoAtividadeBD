-- 1. Criar uma Base de Dados

CREATE DATABASE snek

  -- A Base de Dados foi criada com sucesso.

-- 2. Criar a Base de Dados novamente

CREATE DATABASE snek
 
  -- A Base de Dados não foi criada novamente porquê já existe uma de mesmo nome.

-- 3. Eliminar a Base de Dados

DROP snek
DROP DATABASE snek

  -- A Base de Dados não foi eliminada com o comando DROP, apenas utilizando o DROP DATABASE.

-- 4. Eliminar a Base de Dados novamnete

DROP DATABASE snek

  -- A Base de Dados não foi eliminada novamente porquê não existe.

-- 5. Eliminar a Base de Dados com IF EXISTS

CREATE DATABASE snek
DROP DATABASE IF EXISTS snek

  -- A Base de Dados foi eliminada da mesma maneira que anteriormente.

-- 6. Criar e Usar a Base de Dados

CREATE DATABASE snek
USE snek

  -- A Base de Dados foi eliminada da mesma maneira que anteriormente.

-- 7. Criar uma Tabela

CREATE TABLE cidade(
    id_cidade INT PRIMARY KEY NOT NULL,
    nomeee VARCHAR(100) NOT NULL UNIQUE
)

  -- A Tabela foi criada com sucesso.

-- 8. Alterar uma Coluna

ALTER TABLE cidade CHANGE nomeee nome VARCHAR(100);
  
  -- Dessa forma, é possível alterar outras especificações da Coluna.

-- 9. Criar registros na Coluna

INSERT INTO cidade(id_cidade, nome) VALUES (1, 'Paranavaí');
INSERT INTO cidade(id_cidade, nome) VALUES (2, 'Porto Velho');
INSERT INTO cidade(id_cidade, nome) VALUES (3, 'Alto Paraná');
  
  -- Dessa forma, é possível alterar outras especificações da Coluna.