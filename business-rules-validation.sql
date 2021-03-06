-- Encontrar todos os filmes onde determinado ator participou:

-- Cl?usula WHERE com condicionais:

SELECT F.TITULO, F.DURACAO_EM_MIN, C.DESCRICAO, E.NOME_REAL
FROM FILME F, CATEGORIA C, ESTRELA E, FILME_ESTRELA FE
WHERE F.ID = FE.FILME_ID
AND C.ID = F.CATEGORIA_ID
AND E.ID = FE.ESTRELA_ID
AND E.NOME_REAL = 'SCARLET JOHANSON';

-- Utilizando o JOIN:
SELECT F.TITULO, F.DURACAO_EM_MIN, C.DESCRICAO, E.NOME_REAL
FROM FILME_ESTRELA FE
JOIN FILME F ON F.ID = FE.FILME_ID
JOIN CATEGORIA C ON C.ID = F.CATEGORIA_ID
JOIN ESTRELA E ON E.ID = FE.ESTRELA_ID
WHERE E.NOME_REAL = 'SCARLET JOHANSON';

-- Utilizando os dados da VIEW VW_DADOS_FILME:

SELECT * FROM VW_DADOS_FILME
WHERE ATOR IS NOT NULL