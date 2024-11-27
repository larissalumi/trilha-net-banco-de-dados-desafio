-- Não pude instalar o sql server, então eu utilizei um compilador online. Caso queira fazer desse modo, em cima deve ser copiado o conteudo do arquivo Script Filmes.sql 
-- 1
SELECT 
  Nome,
  Ano
FROM Filmes

-- 2
SELECT 
  Nome,
  Ano,
  Duracao
FROM Filmes
ORDER BY Ano

-- 3 
SELECT 
  Nome,
  Ano, 
  Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro'
  
-- 4 
SELECT 
  Nome,
  Ano, 
  Duracao
FROM Filmes
WHERE Ano = '1997'
  
-- 5
SELECT 
  Nome,
  Ano, 
  Duracao
FROM Filmes
WHERE Ano > 2000

-- 6 
SELECT 
  Nome,
  Ano, 
  Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao
  
-- 7
SELECT 
  Ano, 
  COUNT(*) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY MAX(Duracao) DESC

-- 8
SELECT 
  PrimeiroNome,
  UltimoNome,
  Genero
FROM Atores
WHERE Genero = 'M'

-- 9 
SELECT 
  PrimeiroNome,
  UltimoNome,
  Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- 10
SELECT
  Nome,
  Genero
FROM Filmes
INNER JOIN FilmesGenero ON FilmesGenero.IdFilme = Filmes.Id
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id

-- 11
SELECT 
  Nome,
  Genero
FROM Filmes
INNER JOIN FilmesGenero ON FilmesGenero.IdFilme = Filmes.Id
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE Genero = 'Mistério'

-- 12
SELECT
   Nome,
   PrimeiroNome,
   UltimoNome,
   Papel
FROM Filmes
INNER JOIN ElencoFilme ON Filmes.Id = IdFilme
INNER JOIN Atores ON IdAtor = Atores.Id