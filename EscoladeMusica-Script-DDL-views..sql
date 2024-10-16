-- 1. View para listar todas as sinfonias e os músicos que participaram delas.

CREATE OR REPLACE VIEW vw_sinfonias_musicos AS
SELECT 
    s.nome AS sinfonia, 
    m.nome AS musico
FROM 
    mydb.sinfonia s
JOIN 
    mydb.musico m ON s.idsinfonia = m.sinfonia_idsinfonia;


-- 2. View para orquestras e o número de sinfonias que tocaram.
CREATE OR REPLACE VIEW vw_orquestras_sinfonias AS
SELECT 
    o.nome AS orquestra, 
    COUNT(s.idsinfonia) AS total_sinfonias
FROM 
    mydb.orquestra o
LEFT JOIN 
    mydb.sinfonia s ON o.sinfonia_idsinfonia = s.idsinfonia
GROUP BY 
    o.nome;

-- 3. View para compositores e suas respectivas sinfonias em ordem alfabética.
CREATE OR REPLACE VIEW vw_compositores_sinfonias AS
SELECT 
    s.compositor, 
    s.nome AS sinfonia
FROM 
    mydb.sinfonia s
ORDER BY 
    s.compositor, s.nome;

-- 4. View para contar quantos músicos tocam cada função.
CREATE OR REPLACE VIEW vw_funcoes_musicos AS
SELECT 
    f.descricao AS funcao, 
    COUNT(m.cpf) AS total_musicos
FROM 
    mydb.funcao f
LEFT JOIN 
    mydb.musico m ON f.idfuncao = m.funcao_idfuncao
GROUP BY 
    f.descricao;

-- 5. View para listar sinfonias criadas entre 2021 e 2023.
CREATE OR REPLACE VIEW vw_sinfonias_2021_2023 AS
SELECT 
    nome, 
    data_criacao
FROM 
    mydb.sinfonia
WHERE 
    data_criacao BETWEEN '2021-01-01' AND '2023-12-31';

-- 6. View para a sinfonia mais antiga.
CREATE OR REPLACE VIEW vw_sinfonia_mais_antiga AS
SELECT 
    nome, 
    MIN(data_criacao) AS data_criacao
FROM 
    mydb.sinfonia;

-- 7. View para músicos com suas nacionalidades e as orquestras em que tocam.
CREATE OR REPLACE VIEW vw_musicos_orquestras AS
SELECT 
    m.nome AS musico, 
    m.nacionalidade, 
    o.nome AS orquestra
FROM 
    mydb.musico m
JOIN 
    mydb.orquestra o ON m.orquestra_idorquestra = o.idorquestra;

-- 8. View para listar os instrumentos que não têm músicos associados.
CREATE OR REPLACE VIEW vw_instrumentos_sem_musicos AS
SELECT 
    i.nome AS instrumento
FROM 
    mydb.instrumentos i
LEFT JOIN 
    mydb.musico m ON i.idinstrumentos = m.instrumentos_idinstrumentos
WHERE 
    m.cpf IS NULL;

-- 9. View para contagem de músicos nascidos em cada ano.
CREATE OR REPLACE VIEW vw_musicos_por_ano_nascimento AS
SELECT 
    YEAR(data_nasc) AS ano_nascimento, 
    COUNT(cpf) AS total_musicos
FROM 
    mydb.musico
GROUP BY 
    ano_nascimento;

-- 10. View para orquestras com suas datas de criação e o número total de músicos.
CREATEvw_orquestras_musicosvw_musicos_por_ano_nascimento OR REPLACE VIEW vw_orquestras_musicos AS
SELECT 
    o.nome AS orquestra, 
    o.data_criacao, 
    COUNT(m.cpf) AS total_musicos
FROM 
    mydb.orquestra o
LEFT JOIN 
    mydb.musico m ON o.idorquestra = m.orquestra_idorquestra
GROUP BY 
    o.nome, o.data_criacao;
    
    
