-- Desativar checagem de chave estrangeira para evitar erros
SET FOREIGN_KEY_CHECKS = 0;

-- Excluir todas as tabelas
DROP TABLE IF EXISTS mydb.musico;
DROP TABLE IF EXISTS mydb.orquestra;
DROP TABLE IF EXISTS mydb.sinfonia;
DROP TABLE IF EXISTS mydb.funcao;
DROP TABLE IF EXISTS mydb.instrumentos;

-- Excluir todas as views
DROP VIEW IF EXISTS mydb.view_nome; -- Altere "view_nome" para os nomes das suas views

-- Excluir todos os procedimentos armazenados
DROP PROCEDURE IF EXISTS mydb.procedimento_nome; -- Altere "procedimento_nome" para os nomes dos seus procedimentos

-- Excluir todas as funções
DROP FUNCTION IF EXISTS mydb.funcao_nome; -- Altere "funcao_nome" para os nomes das suas funções

-- Reativar checagem de chave estrangeira
SET FOREIGN_KEY_CHECKS = 1;

-- Opcional: Excluir o schema se não for mais necessário
DROP SCHEMA IF EXISTS mydb;
