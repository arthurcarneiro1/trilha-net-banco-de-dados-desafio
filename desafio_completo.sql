-- Desafio DIO - Consultas SQL

-- 1 – Buscar o nome e ano dos filmes
SELECT Nome, Ano
FROM Filmes;

-- 2 – Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT Nome, Ano
FROM Filmes
ORDER BY Ano ASC;

-- 3 – Buscar pelo filme “De Volta para o Futuro”, trazendo nome, ano e duração
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro';

-- 4 – Buscar os filmes lançados em 1997
SELECT *
FROM Filmes
WHERE Ano = 1997;

-- 5 – Buscar os filmes lançados APÓS o ano 2000
SELECT *
FROM Filmes
WHERE Ano > 2000;

-- 6 – Buscar filmes com duração > 100 e < 150, ordenando pela duração crescente
SELECT *
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC;

-- 7 – Buscar a quantidade de filmes lançados por ano, agrupando por ano e ordenando pela quantidade de filmes (decrescente)
SELECT Ano, COUNT(*) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC;

-- 8 – Buscar atores do gênero masculino
SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'M';

-- 9 – Buscar atrizes do gênero feminino, ordenando pelo PrimeiroNome
SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome;

-- 10 – Buscar o nome do filme e o gênero
SELECT f.Nome AS Filme, g.Genero
FROM Filmes f
JOIN FilmesGenero fg ON f.Id = fg.IdFilme
JOIN Generos g ON g.Id = fg.IdGenero;

-- 11 – Buscar o nome do filme e o gênero “Mistério”
SELECT f.Nome AS Filme, g.Genero
FROM Filmes f
JOIN FilmesGenero fg ON f.Id = fg.IdFilme
JOIN Generos g ON g.Id = fg.IdGenero
WHERE g.Genero = 'Mistério';

-- 12 – Buscar o nome do filme e os atores
SELECT f.Nome AS Filme,
       a.PrimeiroNome,
       a.UltimoNome,
       ef.Papel
FROM Filmes f
JOIN ElencoFilme ef ON f.Id = ef.IdFilme
JOIN Atores a ON a.Id = ef.IdAtor;
