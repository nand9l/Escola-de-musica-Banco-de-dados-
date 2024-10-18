-- 1. View para listar todas as sinfonias e os músicos que participaram delas.

CREATE OR REPLACE VIEW vw_sinfonias_musicos AS
SELECT 
    s.nome AS sinfonia, 
    m.nome AS musico
FROM 
    mydb.sinfonia s
JOIN 
    mydb.musico m ON s.idsinfonia = m.sinfonia_idsinfonia;


-- 2. View para compositores e suas respectivas sinfonias em ordem alfabética.
CREATE OR REPLACE VIEW vw_compositores_sinfonias AS
SELECT 
    s.compositor, 
    s.nome AS sinfonia
FROM 
    mydb.sinfonia s
ORDER BY 
    s.compositor, s.nome;

-- 3. View para contar quantos músicos tocam cada função.
CREATE OR REPLACE VIEW vw_funcoes_musicos AS
SELECT 
    f.descrição AS funcao, 
    COUNT(m.cpf) AS total_musicos
FROM 
    mydb.funcao f
LEFT JOIN 
    mydb.musico m ON f.idfuncao = m.funcao_idfuncao
GROUP BY 
    f.descrição;

-- 4. View para listar sinfonias criadas entre 2021 e 2023.
CREATE OR REPLACE VIEW vw_sinfonias_2021_2023 AS
SELECT 
    nome, 
    data_criacao
FROM 
    mydb.sinfonia
WHERE 
    data_criacao BETWEEN '2021-01-01' AND '2023-12-31';

-- 5. View para a sinfonia mais antiga.
CREATE OR REPLACE VIEW vw_sinfonia_mais_antiga AS
SELECT 
    nome, 
    MIN(data_criacao) AS data_criacao
FROM 
    mydb.sinfonia;

-- 6. View para músicos com suas nacionalidades e as orquestras em que tocam.
CREATE OR REPLACE VIEW vw_musicos_orquestras AS
SELECT 
    m.nome AS musico, 
    m.nacionalidade, 
    o.nome AS orquestra
FROM 
    mydb.musico m
JOIN 
    mydb.orquestra o ON m.orquestra_idorquestra = o.idorquestra;

-- 7. View para listar os instrumentos que não têm músicos associados.
CREATE OR REPLACE VIEW vw_instrumentos_sem_musicos AS
SELECT 
    i.nome AS instrumento
FROM 
    mydb.instrumento i
LEFT JOIN 
    mydb.musico m ON i.idinstrumento = m.instrumento_idinstrumento
WHERE 
    m.cpf IS NULL;

-- 8. View para contagem de músicos nascidos em cada ano.
CREATE OR REPLACE VIEW vw_musicos_por_ano_nascimento AS
SELECT 
    YEAR(data_nasc) AS ano_nascimento, 
    COUNT(cpf) AS total_musicos
FROM 
    mydb.musico
GROUP BY 
    ano_nascimento;

    
    
