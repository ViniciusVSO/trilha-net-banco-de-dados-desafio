-- PRIMEIRA CONSULTA
SELECT Nome, Ano FROM Filmes

-- SEGUNDA CONSULTA
SELECT Nome, Ano, Duracao FROM Filmes ORDER BY Ano

-- TERCEIRA CONSULTA
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De Volta Para o Futuro'

-- QUARTA CONSULTA
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano = 1997

-- QUINTA CONSULTA
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano > 2000

-- SEXTA CONSULTA
SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao > 100 AND  Duracao < 150 ORDER BY Duracao

-- SÉTIMA CONSULTA
SELECT Ano, COUNT(Id) Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC

-- OITAVA CONSULTA
SELECT PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'M'

-- NONA CONSULTA
SELECT PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome

-- DECIMA CONSULTA
SELECT Filmes.Nome AS Nome, Generos.Genero AS Genero
FROM Filmes
JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
JOIN Generos ON FilmesGenero.IdGenero = Generos.Id;

-- DECIMA PRIMEIRA CONSULTA
SELECT Filmes.Nome AS Nome, Generos.Genero AS Genero
FROM Filmes
JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
JOIN Generos ON FilmesGenero.IdGenero = Generos.Id WHERE Generos.Genero = 'Mistério';

-- DECIMA SEGUNDA CONSULTA
SELECT Filmes.Nome As Nome, Atores.PrimeiroNome as PrimeiroNome, Atores.UltimoNome as UltimoNome, ElencoFilme.Papel as Papel
FROM Filmes
JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
JOIN Atores ON ElencoFilme.IdAtor = Atores.Id

SELECT * FROM Atores
SELECT * FROM ElencoFilme
SELECT * FROM Filmes
SELECT * FROM FilmesGenero
SELECT * FROM Generos