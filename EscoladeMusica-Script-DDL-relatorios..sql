-- 1. Listar todas as sinfonias com seus compositores.
SELECT nome, compositor FROM mydb.sinfonia;


-- 2. Obter a lista de orquestras e suas respectivas sinfonias.
SELECT o.nome AS orquestra, s.nome AS sinfonia
FROM mydb.orquestra o
JOIN mydb.sinfonia s ON o.sinfonia_idsinfonia = s.idsinfonia;


-- 3. Mostrar todos os músicos e suas funções.
SELECT m.nome AS musico, f.descricao AS funcao
FROM mydb.musico m
JOIN mydb.funcao f ON m.funcao_idfuncao = f.idfuncao;


-- 4. Listar os instrumentos usados em cada sinfonia.
SELECT s.nome AS sinfonia, i.nome AS instrumento
FROM mydb.sinfonia s
JOIN mydb.musico m ON s.idsinfonia = m.sinfonia_idsinfonia
JOIN mydb.instrumentos i ON m.instrumentos_idinstrumentos = i.idinstrumentos
order by sinfonia;


-- 5. Contar quantos músicos tocam cada tipo de instrumento.
SELECT i.nome AS instrumento, COUNT(m.cpf) AS quantidade
FROM mydb.instrumentos i
LEFT JOIN mydb.musico m ON i.idinstrumentos = m.instrumentos_idinstrumentos
GROUP BY i.nome;


-- 6. Listar os compositores que têm mais de uma sinfonia.
SELECT compositor, COUNT(idsinfonia) AS total
FROM mydb.sinfonia
GROUP BY compositor
HAVING total > 1;


-- 7. Listar orquestras com mais de um músico.
SELECT o.nome AS orquestra, COUNT(m.cpf) AS total_musicos
FROM mydb.orquestra o
JOIN mydb.musico m ON o.idorquestra = m.orquestra_idorquestra
GROUP BY o.nome
HAVING total_musicos > 1;


-- 8. Mostrar detalhes dos músicos e as sinfonias em que estão envolvidos.
SELECT m.nome AS musico, s.nome AS sinfonia
FROM mydb.musico m
JOIN mydb.sinfonia s ON m.sinfonia_idsinfonia = s.idsinfonia;


-- 9. Contar o número de sinfonias por compositor.
SELECT compositor, COUNT(idsinfonia) AS total_sinfonias
FROM mydb.sinfonia
GROUP BY compositor;


-- 10. Obter a lista de músicos e suas orquestras.
SELECT m.nome AS musico, o.nome AS orquestra
FROM mydb.musico m
JOIN mydb.orquestra o ON m.orquestra_idorquestra = o.idorquestra;


-- 11. Mostrar os instrumentos e o número de músicos que tocam cada um.
SELECT i.nome AS instrumento, COUNT(m.cpf) AS total_musicos
FROM mydb.instrumentos i
LEFT JOIN mydb.musico m ON i.idinstrumentos = m.instrumentos_idinstrumentos
GROUP BY i.nome;


-- 12. Mostrar as funções que não estão sendo ocupadas por nenhum músico.
SELECT f.descricao
FROM mydb.funcao f
LEFT JOIN mydb.musico m ON f.idfuncao = m.funcao_idfuncao
WHERE m.cpf IS NULL;


-- 13. Contar o número de músicos em cada sinfonia.
SELECT s.nome AS sinfonia, COUNT(m.cpf) AS total_musicos
FROM mydb.sinfonia s
LEFT JOIN mydb.musico m ON s.idsinfonia = m.sinfonia_idsinfonia
GROUP BY s.nome;


-- 14. Mostrar os compositores e suas respectivas sinfonias em ordem alfabética.
SELECT s.compositor, s.nome
FROM mydb.sinfonia s
ORDER BY s.compositor, s.nome;


-- 15. Contar quantos músicos tocam cada função.
SELECT f.descricao AS funcao, COUNT(m.cpf) AS total_musicos
FROM mydb.funcao f
LEFT JOIN mydb.musico m ON f.idfuncao = m.funcao_idfuncao
GROUP BY f.descricao;


-- 16. Listar as sinfonias que foram criadas entre 2021 e 2023.
SELECT nome, data_criacao
FROM mydb.sinfonia
WHERE data_criacao BETWEEN '1800-01-01' AND '1880-12-31';


-- 17. Mostrar o número total de músicos na orquestra mais antiga.
SELECT o.nome AS orquestra, COUNT(m.cpf) AS total_musicos
FROM mydb.orquestra o
JOIN mydb.musico m ON o.idorquestra = m.orquestra_idorquestra
WHERE o.data_criacao = (SELECT MIN(data_criacao) FROM mydb.orquestra)
GROUP BY o.nome;


-- 18. Listar os músicos com suas nacionalidades e as orquestras em que tocam.
SELECT m.nome AS musico, m.nacionalidade, o.nome AS orquestra
FROM mydb.musico m
JOIN mydb.orquestra o ON m.orquestra_idorquestra = o.idorquestra;


-- 19. Obter a média de idade dos músicos.
SELECT 
CONCAT(FORMAT(AVG(YEAR(CURDATE()) - YEAR(data_nasc)), 0), ' anos') AS media_idade,
COUNT(cpf) AS total_musicos
FROM 
mydb.musico;


-- 20. Listar as orquestras com suas datas de criação e o número total de músicos.
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

    




