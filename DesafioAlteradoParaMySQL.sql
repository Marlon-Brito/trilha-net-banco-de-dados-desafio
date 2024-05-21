-- Criando BD
CREATE DATABASE Filmes;
-- Acessando BD
USE Filmes;
-- Criando tabelas
CREATE TABLE Atores(
	Id int auto_increment NOT NULL,
	PrimeiroNome varchar(20) NULL,
	UltimoNome varchar(20) NULL,
	Genero varchar(1) NULL,
	CONSTRAINT PK_actor PRIMARY KEY(Id)
);

CREATE TABLE ElencoFilme(
	Id int auto_increment NOT NULL,
	IdAtor int NOT NULL,
	IdFilme int NULL,
	Papel varchar(30) NULL,
	CONSTRAINT PK_ElencoFilme PRIMARY KEY(Id),
    CONSTRAINT FK_ElencoFilme_Atores FOREIGN KEY(IdAtor) REFERENCES Atores(Id),
    CONSTRAINT FK_ElencoFilme_Filmes FOREIGN KEY(IdFilme) REFERENCES Filmes(Id)
);

CREATE TABLE Filmes(
	Id int auto_increment NOT NULL,
	Nome varchar(50) NULL,
	Ano int NULL,
	Duracao int NULL,
	CONSTRAINT PK_movie PRIMARY KEY(Id) 
);

CREATE TABLE FilmesGenero(
	Id int auto_increment NOT NULL,
	IdGenero int NULL,
	IdFilme int NULL,
	CONSTRAINT PK_FilmesGenero PRIMARY KEY(Id),
    CONSTRAINT FK_FilmesGenero_Filmes FOREIGN KEY(IdFilme) REFERENCES Filmes(Id),
    CONSTRAINT FK_FilmesGenero_Generos FOREIGN KEY(IdGenero) REFERENCES Generos(Id)
);

CREATE TABLE Generos(
	Id int auto_increment NOT NULL,
	Genero varchar(20) NULL,
	CONSTRAINT PK_genres PRIMARY KEY(Id)
);

-- Exibindo tabelas e as detalhando
SHOW TABLES;
DESC Atores;
DESC ElencoFilme;
DESC Filmes;
DESC FilmesGenero;
DESC Generos;

/* ========== Dados convertidos para MySQL: ========== */
INSERT Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (null, 'James', 'Stewart', 'M');
INSERT Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (null, 'Deborah', 'Kerr', 'F');
INSERT Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (null, 'Peter', 'OToole', 'M');
INSERT Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (null, 'Robert', 'DeNiro', 'M');
INSERT Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (null, 'Harrison', 'Ford', 'M');
INSERT Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (null, 'Stephen', 'Baldwin', 'M');
INSERT Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (null, 'Jack', 'Nicholson', 'M');
INSERT Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (null, 'Mark', 'Wahlberg', 'M');
INSERT Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (null, 'Woody', 'Allen', 'M');
INSERT Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (null, 'Claire', 'Danes', 'F');
INSERT Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (null, 'Tim', 'Robbins', 'M');
INSERT Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (null, 'Kevin', 'Spacey', 'M');
INSERT Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (null, 'Kate', 'Winslet', 'F');
INSERT Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (null, 'Robin', 'Williams', 'M');
INSERT Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (null, 'Jon', 'Voight', 'M');
INSERT Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (null, 'Ewan', 'McGregor', 'M');
INSERT Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (null, 'Christian', 'Bale', 'M');
INSERT Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (null, 'Maggie', 'Gyllenhaal', 'F');
INSERT Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (null, 'Dev', 'Patel', 'M');
INSERT Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (null, 'Sigourney', 'Weaver', 'F');
INSERT Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (null, 'David', 'Aston', 'M');
INSERT Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (null, 'Ali', 'Astin', 'F');

INSERT ElencoFilme (Id, IdAtor, IdFilme, Papel) VALUES (null, 1, 1, 'John Scottie Ferguson');
INSERT ElencoFilme (Id, IdAtor, IdFilme, Papel) VALUES (null, 2, 2, 'Miss Giddens');
INSERT ElencoFilme (Id, IdAtor, IdFilme, Papel) VALUES (null, 3, 3, 'T.E. Lawrence');
INSERT ElencoFilme (Id, IdAtor, IdFilme, Papel) VALUES (null, 4, 4, 'Michael');
INSERT ElencoFilme (Id, IdAtor, IdFilme, Papel) VALUES (null, 6, 6, 'Rick Deckard');
INSERT ElencoFilme (Id, IdAtor, IdFilme, Papel) VALUES (null, 7, 8, 'McManus');
INSERT ElencoFilme (Id, IdAtor, IdFilme, Papel) VALUES (null, 9, 10, 'Eddie Adams');
INSERT ElencoFilme (Id, IdAtor, IdFilme, Papel) VALUES (null, 10, 11, 'Alvy Singer');
INSERT ElencoFilme (Id, IdAtor, IdFilme, Papel) VALUES (null, 11, 12, 'San');
INSERT ElencoFilme (Id, IdAtor, IdFilme, Papel) VALUES (null, 12, 13, 'Andy Dufresne');
INSERT ElencoFilme (Id, IdAtor, IdFilme, Papel) VALUES (null, 13, 14, 'Lester Burnham');
INSERT ElencoFilme (Id, IdAtor, IdFilme, Papel) VALUES (null, 14, 15, 'Rose DeWitt Bukater');
INSERT ElencoFilme (Id, IdAtor, IdFilme, Papel) VALUES (null, 15, 16, 'Sean Maguire');
INSERT ElencoFilme (Id, IdAtor, IdFilme, Papel) VALUES (null, 16, 17, 'Ed');
INSERT ElencoFilme (Id, IdAtor, IdFilme, Papel) VALUES (null, 17, 18, 'Renton');
INSERT ElencoFilme (Id, IdAtor, IdFilme, Papel) VALUES (null, 19, 20, 'Elizabeth Darko');
INSERT ElencoFilme (Id, IdAtor, IdFilme, Papel) VALUES (null, 20, 21, 'Older Jamal');
INSERT ElencoFilme (Id, IdAtor, IdFilme, Papel) VALUES (null, 21, 22, 'Ripley');
INSERT ElencoFilme (Id, IdAtor, IdFilme, Papel) VALUES (null, 13, 23, 'Bobby Darin');
INSERT ElencoFilme (Id, IdAtor, IdFilme, Papel) VALUES (null, 8, 9, 'J.J. Gittes');
INSERT ElencoFilme (Id, IdAtor, IdFilme, Papel) VALUES (null, 18, 19, 'Alfred Borden');

INSERT Filmes (Id, Nome, Ano, Duracao) VALUES (null, 'Um Corpo que Cai', 1958, 128);
INSERT Filmes (Id, Nome, Ano, Duracao) VALUES (null, 'Os Inocentes', 1961, 100);
INSERT Filmes (Id, Nome, Ano, Duracao) VALUES (null, 'Lawrence da Arábia', 1962, 216);
INSERT Filmes (Id, Nome, Ano, Duracao) VALUES (null, 'O Franco Atirador', 1978, 183);
INSERT Filmes (Id, Nome, Ano, Duracao) VALUES (null, 'Amadeus', 1984, 160);
INSERT Filmes (Id, Nome, Ano, Duracao) VALUES (null, 'Blade Runner', 1982, 117);
INSERT Filmes (Id, Nome, Ano, Duracao) VALUES (null, 'De Olhos Bem Fechados', 1999, 159);
INSERT Filmes (Id, Nome, Ano, Duracao) VALUES (null, 'Os Suspeitos', 1995, 106);
INSERT Filmes (Id, Nome, Ano, Duracao) VALUES (null, 'Chinatown', 1974, 130);
INSERT Filmes (Id, Nome, Ano, Duracao) VALUES (null, 'Boogie Nights - Prazer Sem Limites', 1997, 155);
INSERT Filmes (Id, Nome, Ano, Duracao) VALUES (null, 'Noivo Neurótico, Noiva Nervosa', 1977, 93);
INSERT Filmes (Id, Nome, Ano, Duracao) VALUES (null, 'Princesa Mononoke', 1997, 134);
INSERT Filmes (Id, Nome, Ano, Duracao) VALUES (null, 'Um Sonho de Liberdade', 1994, 142);
INSERT Filmes (Id, Nome, Ano, Duracao) VALUES (null, 'Beleza Americana', 1999, 122);
INSERT Filmes (Id, Nome, Ano, Duracao) VALUES (null, 'Titanic', 1997, 194);
INSERT Filmes (Id, Nome, Ano, Duracao) VALUES (null, 'Gênio Indomável', 1997, 126);
INSERT Filmes (Id, Nome, Ano, Duracao) VALUES (null, 'Amargo pesadelo', 1972, 109);
INSERT Filmes (Id, Nome, Ano, Duracao) VALUES (null, 'Trainspotting - Sem Limites', 1996, 94);
INSERT Filmes (Id, Nome, Ano, Duracao) VALUES (null, 'O Grande Truque', 2006, 130);
INSERT Filmes (Id, Nome, Ano, Duracao) VALUES (null, 'Donnie Darko', 2001, 113);
INSERT Filmes (Id, Nome, Ano, Duracao) VALUES (null, 'Quem Quer Ser um Milionário?', 2008, 120);
INSERT Filmes (Id, Nome, Ano, Duracao) VALUES (null, 'Aliens, O Resgate', 1986, 137);
INSERT Filmes (Id, Nome, Ano, Duracao) VALUES (null, 'Uma Vida sem Limites', 2004, 118);
INSERT Filmes (Id, Nome, Ano, Duracao) VALUES (null, 'Avatar', 2009, 162);
INSERT Filmes (Id, Nome, Ano, Duracao) VALUES (null, 'Coração Valente', 1995, 178);
INSERT Filmes (Id, Nome, Ano, Duracao) VALUES (null, 'Os Sete Samurais', 1954, 207);
INSERT Filmes (Id, Nome, Ano, Duracao) VALUES (null, 'A Viagem de Chihiro', 2001, 125);
INSERT Filmes (Id, Nome, Ano, Duracao) VALUES (null, 'De Volta para o Futuro', 1985, 116);

INSERT FilmesGenero (Id, IdGenero, IdFilme) VALUES (null, 1, 22);
INSERT FilmesGenero (Id, IdGenero, IdFilme) VALUES (null, 2, 17);
INSERT FilmesGenero (Id, IdGenero, IdFilme) VALUES (null, 2, 3);
INSERT FilmesGenero (Id, IdGenero, IdFilme) VALUES (null, 3, 12);
INSERT FilmesGenero (Id, IdGenero, IdFilme) VALUES (null, 5, 11);
INSERT FilmesGenero (Id, IdGenero, IdFilme) VALUES (null, 6, 8);
INSERT FilmesGenero (Id, IdGenero, IdFilme) VALUES (null, 6, 13);
INSERT FilmesGenero (Id, IdGenero, IdFilme) VALUES (null, 7, 26);
INSERT FilmesGenero (Id, IdGenero, IdFilme) VALUES (null, 7, 28);
INSERT FilmesGenero (Id, IdGenero, IdFilme) VALUES (null, 7, 18);
INSERT FilmesGenero (Id, IdGenero, IdFilme) VALUES (null, 7, 21);
INSERT FilmesGenero (Id, IdGenero, IdFilme) VALUES (null, 8, 2);
INSERT FilmesGenero (Id, IdGenero, IdFilme) VALUES (null, 9, 23);
INSERT FilmesGenero (Id, IdGenero, IdFilme) VALUES (null, 10, 7);
INSERT FilmesGenero (Id, IdGenero, IdFilme) VALUES (null, 10, 27);
INSERT FilmesGenero (Id, IdGenero, IdFilme) VALUES (null, 10, 1);
INSERT FilmesGenero (Id, IdGenero, IdFilme) VALUES (null, 11, 14);
INSERT FilmesGenero (Id, IdGenero, IdFilme) VALUES (null, 12, 6);
INSERT FilmesGenero (Id, IdGenero, IdFilme) VALUES (null, 13, 4);

INSERT Generos (Id, Genero) VALUES (null, 'Ação');
INSERT Generos (Id, Genero) VALUES (null, 'Aventura');
INSERT Generos (Id, Genero) VALUES (null, 'Animação');
INSERT Generos (Id, Genero) VALUES (null, 'Biografia');
INSERT Generos (Id, Genero) VALUES (null, 'Comédia');
INSERT Generos (Id, Genero) VALUES (null, 'Crime');
INSERT Generos (Id, Genero) VALUES (null, 'Drama');
INSERT Generos (Id, Genero) VALUES (null, 'Horror');
INSERT Generos (Id, Genero) VALUES (null, 'Musical');
INSERT Generos (Id, Genero) VALUES (null, 'Mistério');
INSERT Generos (Id, Genero) VALUES (null, 'Romance');
INSERT Generos (Id, Genero) VALUES (null, 'Suspense');
INSERT Generos (Id, Genero) VALUES (null, 'Guerra');

/* ========== Exibindo dados criados: ========== */
SELECT * FROM Atores;
SELECT * FROM ElencoFilme;
SELECT * FROM Filmes;
SELECT * FROM FilmesGenero;
SELECT * FROM Generos;

/* ========== Objetivos do Lab: ========== */

-- 1 - Buscar o nome e ano dos filmes
SELECT Nome, Ano FROM Filmes;

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT Nome, Ano FROM Filmes ORDER BY ANO;

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT Nome, Ano, Duracao FROM Filmes WHERE nome = 'de volta para o futuro';

-- 4 - Buscar os filmes lançados em 1997
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano = 1997;

-- 5 - Buscar os filmes lançados APÓS o ano 2000
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano > 2000;

/* 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, 
ordenando pela duracao em ordem crescente */
SELECT Nome, Ano, Duracao 
	FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao;

/* 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, 
ordenando pela duracao em ordem decrescente */

SELECT Ano, COUNT(*) Quantidade
	FROM Filmes 
GROUP BY Ano
ORDER BY Quantidade DESC;

-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT * FROM Atores WHERE Genero = 'M';

/* 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, 
e ordenando pelo PrimeiroNome */
SELECT * FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome;

-- 10 - Buscar o nome do filme e o gênero
SELECT * FROM Filmes;
SELECT * FROM FilmesGenero;
SELECT * FROM Generos;

SELECT f.Nome, g.Genero 
	FROM Filmes f INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme
				  INNER JOIN Generos g       ON fg.IdGenero = g.Id;
                  
-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT f.Nome, g.Genero 
	FROM Filmes f INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme
				  INNER JOIN Generos g       ON fg.IdGenero = g.Id
WHERE g.Genero = 'Mistério';

/* 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, 
UltimoNome e seu Papel */
SELECT f.Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel
	FROM Filmes f INNER JOIN ElencoFilme ef ON f.Id = ef.IdFilme
				  INNER JOIN Atores a 		ON a.Id = ef.IdAtor;