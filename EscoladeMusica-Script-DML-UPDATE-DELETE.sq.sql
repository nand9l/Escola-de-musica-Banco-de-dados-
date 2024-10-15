-- Deletar músicos
START TRANSACTION;
DELETE FROM `mydb`.`musico` WHERE `cpf` = '12345678901';
DELETE FROM `mydb`.`musico` WHERE `cpf` = '23456789012';
ROLLBACK;

-- Atualizar informações de músicos
START TRANSACTION;
UPDATE `mydb`.`musico` SET `nacionalidade` = 'Argelina' WHERE `cpf` = '34567890123';
UPDATE `mydb`.`musico` SET `data_nasc` = '1989-07-15' WHERE `cpf` = '45678901234';
ROLLBACK;

-- Deletar orquestras
START TRANSACTION;
DELETE FROM `mydb`.`orquestra` WHERE `idorquestra` = 1;
DELETE FROM `mydb`.`orquestra` WHERE `idorquestra` = 2;
ROLLBACK;

-- Atualizar informações de orquestras
START TRANSACTION;
UPDATE `mydb`.`orquestra` SET `cidade` = 'Londres' WHERE `idorquestra` = 3;
UPDATE `mydb`.`orquestra` SET `nome` = 'Nova Orquestra Filarmônica' WHERE `idorquestra` = 4;
ROLLBACK;

-- Deletar instrumentos
START TRANSACTION;
DELETE FROM `mydb`.`instrumentos` WHERE `idinstrumentos` = 1;
DELETE FROM `mydb`.`instrumentos` WHERE `idinstrumentos` = 2;
ROLLBACK;

-- Atualizar informações de instrumentos
START TRANSACTION;
UPDATE `mydb`.`instrumentos` SET `nome` = 'Violino Elétrico' WHERE `idinstrumentos` = 3;
UPDATE `mydb`.`instrumentos` SET `nome` = 'Piano Digital' WHERE `idinstrumentos` = 4;
ROLLBACK;

-- Deletar funções
START TRANSACTION;
DELETE FROM `mydb`.`funcao` WHERE `idfuncao` = 1;
DELETE FROM `mydb`.`funcao` WHERE `idfuncao` = 2;
ROLLBACK;

-- Atualizar informações de funções
START TRANSACTION;
UPDATE `mydb`.`funcao` SET `descricao` = 'Maestro Principal' WHERE `idfuncao` = 3;
UPDATE `mydb`.`funcao` SET `descricao` = 'Violoncelista Principal' WHERE `idfuncao` = 4;
ROLLBACK;

-- Atualizar dados de músicos
START TRANSACTION;
UPDATE `mydb`.`musico` SET `nome` = 'João Carlos' WHERE `cpf` = '56789012345';
UPDATE `mydb`.`musico` SET `sinfonia_idsinfonia` = 2 WHERE `cpf` = '67890123456';
ROLLBACK;

-- Deletar músicos com base em condições
START TRANSACTION;
DELETE FROM `mydb`.`musico` WHERE `data_nasc` < '1990-01-01';
DELETE FROM `mydb`.`musico` WHERE `nome` LIKE 'Fernanda%';
ROLLBACK;

-- Atualizar várias orquestras ao mesmo tempo
START TRANSACTION;
UPDATE `mydb`.`orquestra` SET `país` = 'Alemanha' WHERE `país` = 'Brasil';
UPDATE `mydb`.`orquestra` SET `data_criacao` = '1995-01-01' WHERE `idorquestra` IN (5, 6);
ROLLBACK;
