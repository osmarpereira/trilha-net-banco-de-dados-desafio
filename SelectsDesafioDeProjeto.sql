Use Filmes
Go
--1 - Buscar o nome e ano dos filmes'
Select Nome, Ano from Filmes
GO
--2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
Select Nome, Ano, Duracao from Filmes Order by Ano Asc
Go
--3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
Select Nome, Ano, Duracao from Filmes Where nome = 'De Volta para o Futuro'
GO
--4 - Buscar os filmes lançados em 1997
Select Nome, Ano, Duracao from Filmes Where ano = 1997
go
--5 - Buscar os filmes lançados APÓS o ano 2000
Select Nome, Ano, Duracao from Filmes Where ano > 2000
go
--6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
Select Nome, Ano, Duracao from Filmes Where Duracao > 100 and Duracao  < 150 Order by Duracao 
Go
--7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
Select Ano, Count(*) Qunatidade from Filmes Group by Ano Order by sum(Duracao) desc
GO
--8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
Select PrimeiroNome, UltimoNome from Atores Where Genero = 'M'
GO
--9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
Select PrimeiroNome, UltimoNome from Atores Where Genero = 'F' Order by PrimeiroNome 
GO
--10 - Buscar o nome do filme e o gênero

GO
--10 - Buscar o nome do filme e o gênero
Select 
	a.Nome, c.Genero 
from Filmes a
	Inner join FilmesGenero b
		on b.IdFilme = a.Id
	inner join Generos c
		on c.Id = b.IdGenero 
GO
--11 - Buscar o nome do filme e o gênero do tipo "Mistério"
Select 
	a.Nome, c.Genero 
from Filmes a
	Inner join FilmesGenero b
		on b.IdFilme = a.Id
	inner join Generos c
		on c.Id = b.IdGenero 
Where c.Genero = 'Mistério'
GO
--12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
Select 
	a.Nome,
	c.PrimeiroNome,
	c.UltimoNome,
	b.Papel 
from Filmes a
	Inner join ElencoFilme b
		on b.IdFilme = a.Id
	Inner Join Atores c
		on c.Id = b.IdAtor 
GO
