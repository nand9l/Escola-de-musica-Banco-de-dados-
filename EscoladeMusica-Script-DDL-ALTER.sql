
-- Modificar o tamanho do campo nome na tabela orquestra
ALTER TABLE `mydb`.`orquestra` 
MODIFY COLUMN `nome` VARCHAR(100);

--  Renomear a tabela sinfonia para composicao_sinfonica
RENAME TABLE `mydb`.`sinfonia` TO `composicao_sinfonica`;

-- Renomear a coluna descricao na tabela funcao para funcao_descricao
ALTER TABLE `mydb`.`funcao` 
CHANGE COLUMN `descricao` `funcao_descricao` VARCHAR(100);

-- Adicionar uma coluna email à tabela musico
ALTER TABLE `mydb`.`musico` 
ADD COLUMN `email` VARCHAR(100) AFTER `nome`;

--  Renomear a tabela instrumentos para instrumento_musical
RENAME TABLE `mydb`.`instrumentos` TO `instrumento_musical`;

-- Modificar o tipo da coluna nacionalidade na tabela musico para VARCHAR(30)
ALTER TABLE `mydb`.`musico` 
MODIFY COLUMN `nacionalidade` VARCHAR(30);

--  Remover a coluna data_audicao da tabela musico
ALTER TABLE `mydb`.`musico` 
DROP COLUMN `email`;

-- Modificar o tipo da coluna nome na tabela orquestra para VARCHAR(100)
ALTER TABLE `mydb`.`orquestra` 
MODIFY COLUMN `nome` VARCHAR(100);

-- Adicionar uma coluna telefone à tabela musico
ALTER TABLE `mydb`.`musico` 
ADD COLUMN `telefone` VARCHAR(15) AFTER `email`;

--  Renomear a coluna data_criacao na tabela composicao_sinfonica para data_composta
ALTER TABLE `mydb`.`composicao_sinfonica` 
CHANGE COLUMN `data_criacao` `data_composta` YEAR;












