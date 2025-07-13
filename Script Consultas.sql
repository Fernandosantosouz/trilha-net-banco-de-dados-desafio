/* 1 - Buscar o nome e ano dos filmes */
SELECT
Nome,
Ano
FROM Filmes

/* 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano */
SELECT
Nome,
Ano
FROM Filmes
ORDER BY Ano asc

/* 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração */
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE  Id = 28;

/* 4 - Buscar os filmes lançados em 1997 */
SELECT Nome, Ano
FROM Filmes
WHERE  Ano = 1997;

/* 5 - Buscar os filmes lançados APÓS o ano 2000 */
SELECT Nome, Ano
FROM Filmes
WHERE  Ano > 2000;

/* 6 - Buscar os filmes com a duração maior que 100 e menor que 150, ordenando pela duração em ordem crescente */
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE  Duracao > 100 and Duracao < 150
ORDER BY Duracao ASC;
/* 7 - Buscar a quantidade de filmes lançados no ano, agrupando por ano, ordenando pela duração em ordem decrescente */
SELECT Ano, COUNT(*) AS QuantidadeFilmes
FROM Filmes
GROUP BY Ano
ORDER BY QuantidadeFilmes DESC;

/* 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome */
SELECT PrimeiroNome, UltimoNome, Genero
FROM Atores
WHERE Genero = 'M';

/* 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome */
SELECT PrimeiroNome, UltimoNome, Genero
FROM Atores
WHERE Genero = 'F'
order by PrimeiroNome;

/* 10 - Buscar o nome do filme e o gênero */
SELECT F.Nome AS Filmes, G.Genero AS Genero
FROM Filmes F
INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme
INNER JOIN Generos G ON FG.IdGenero = G.Id;

/* 11 - Buscar o nome do filme e o gênero do tipo "Mistério" */
SELECT F.Nome AS Filmes, G.Genero AS Genero
FROM Filmes F
INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme
INNER JOIN Generos G ON FG.IdGenero = G.Id
WHERE G.Genero = 'Mistério';

/* 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel */
SELECT 
    F.Nome AS Filmes,
    A.PrimeiroNome,
    A.UltimoNome,
    E.Papel
FROM 
    ElencoFilme E
JOIN 
    Filmes F ON E.IdFilme = F.Id
JOIN 
    Atores A ON E.IdAtor = A.Id
ORDER BY 
    F.Nome, A.UltimoNome;