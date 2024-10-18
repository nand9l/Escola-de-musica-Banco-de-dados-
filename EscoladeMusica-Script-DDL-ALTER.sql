
-- Modificar o tamanho do campo nome na tabela orquestra
ALTER TABLE `mydb`.`orquestra` 
MODIFY COLUMN `nome` VARCHAR(100);

ALTER TABLE `mydb`.`musico` 
MODIFY COLUMN `cpf` VARCHAR(100);

--  Renomear a tabela sinfonia para composicao_sinfonica
RENAME TABLE `mydb`.`composicao_sinfonica` TO `sinfonia`;


-- Adicionar uma coluna email à tabela musico
ALTER TABLE `mydb`.`musico` 
ADD COLUMN `email` VARCHAR(100) AFTER `nome`;

--  Renomear a tabela instrumentos para instrumento_musical
RENAME TABLE `mydb`.`instrumento_musical` TO `instrumento`;

-- Modificar o tipo da coluna nacionalidade na tabela musico para VARCHAR(30)
ALTER TABLE `mydb`.`musico` 
MODIFY COLUMN `nacionalidade` VARCHAR(30);

-- Modificar o tipo da coluna nome na tabela orquestra para VARCHAR(100)
ALTER TABLE `mydb`.`orquestra` 
MODIFY COLUMN `nome` VARCHAR(100);

-- Adicionar uma coluna telefone à tabela musico
ALTER TABLE `mydb`.`musico` 
ADD COLUMN `telefone` VARCHAR(15) AFTER `email`;

--  Renomear a coluna data_criacao na tabela composicao_sinfonica para data_composta
ALTER TABLE `mydb`.`sinfonia` 
CHANGE COLUMN `data_composta` `data_criacao` date;

-- Adicionar uma coluna genero_musical à tabela sinfonia
ALTER TABLE `mydb`.`sinfonia`
ADD COLUMN `genero_musical` VARCHAR(45) AFTER `compositor`;

-- Remover o índice genero_musical da tabela sinfonia
ALTER TABLE `mydb`.`sinfonia`
DROP COLUMN `genero_musical`;

