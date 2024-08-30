CREATE DATABASE EMPRESA;
USE EMPRESA;
-- 1) Crie uma entidade PESSOAS com os seguintes ATRIBUTOS
-- código, nome, cpf, rg, email.
CREATE TABLE PESSOAS (
 
	CODIGO VARCHAR(255) PRIMARY KEY,
 
	NOME VARCHAR(255),
 
	CPF VARCHAR(11),
 
	RG VARCHAR(12),
 
    EMAIL VARCHAR(255)
 
    );
-- 2) Ao terminar de criar a tabela, você percebeu que o 
-- nome da tabela terá que ser alterada para FUNCIONARIOS. 
-- Faça a alteração do nome.
 
ALTER TABLE PESSOAS RENAME TO FUNCIONARIOS;
-- 3) A regra de negócio diz que é necessário cadastrar 
-- também o telefone e a data de nascimento do funcionário.
 
ALTER TABLE FUNCIONARIOS ADD TELEFONE VARCHAR(15);
ALTER TABLE FUNCIONARIOS ADD DATA_NASCIMENTO DATE;
-- 4) É importante que todos os campos não fiquem nulos.
-- Faça a alteração.
 
ALTER TABLE FUNCIONARIOS
 
MODIFY CODIGO VARCHAR(255) NOT NULL,
 
MODIFY NOME VARCHAR(255) NOT NULL,
 
MODIFY CPF VARCHAR(11) NOT NULL,
 
MODIFY RG VARCHAR(12) NOT NULL,
 
MODIFY EMAIL VARCHAR(255) NOT NULL,
 
MODIFY TELEFONE VARCHAR (15) NOT NULL,
 
MODIFY DATA_NASCIMENTO DATE NOT NULL;
-- 5) Em seguida de fazer a alteração colocando todos os 
-- campos como sendo não nulos, você foi informado que o 
-- atributo data de nascimento pode ficar nulo. Faça a alteração.
 
ALTER TABLE FUNCIONARIOS
MODIFY DATA_NASCIMENTO DATE NULL;
-- 6) Como o cpf será cadastrado acharam que o rg não é
-- tão importante. Logo, pediram para tirar este atributo da entidade.
 
ALTER TABLE FUNCIONARIOS DROP COLUMN RG;
-- 7) O atributo telefone deverá ser renomeado para celular.
 
ALTER TABLE FUNCIONARIOS CHANGE TELEFONE CELULAR VARCHAR(15) NOT NULL;