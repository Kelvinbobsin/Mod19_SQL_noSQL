SELECT *
FROM Customer c 

--PROJEÇÃO

--Limite

SELECT *
FROM Customer c 
LIMIT 10;

--CONTADOR

SELECT COUNT(*)
FROM Customer c;

--Selecionar Coluna

SELECT 
	FirstName,LastName,City
FROM Customer c
Limit 10


--ORDENAÇÃO DOS DADOS
SELECT 
	FirstName,
	LastName,
	City
FROM Customer c
--ASCendente
ORDER BY FirstName ASC


SELECT 
	FirstName,
	LastName,
	City
FROM Customer c
--DECRESCENTE = DESCending
ORDER BY 3 DESC

--Apelidos, alias

SELECT 
	FirstName as "Nome",
	LastName as "Sobrenome",
	City as "Cidade do cliente"
FROM Customer c
--DECRESCENTE = DESCending
ORDER BY 3 DESC
LIMIT 10

--SELEÇÃO - FILTRO

SELECT *
FROM Album a 
WHERE Title = "Big Ones"
LIMIT 20

--Consultas de string deve respeitas letras maiusculas e minusculas( case sensitive )

SELECT *
FROM Album a 
WHERE Title = "Big Ones"

--Selecionar valores nulos e nao nulos

SELECT *
FROM Album a 
WHERE Column1 NOTNULL 

SELECT *
FROM Album a 
WHERE Column1 ISNULL 

--Filtro com valores lógicos

SELECT *
FROM Album a 
WHERE AlbumId >= 100

--selecionar entre 10 e 30
SELECT *
FROM Album a 
WHERE AlbumId 
	BETWEEN 10 and 30
	
SELECT *
FROM Album a 
WHERE AlbumId >= 100
	AND ArtistId = 22
	
--usando like
	
SELECT *
FROM Album a 
WHERE Title LIKE "big ones"

--usando coringa "% %" para achar uma palavra que esquecemos

SELECT *
FROM Album a 
WHERE Title LIKE "%disc%"

--Usar _ para também substituir algum traço

SELECT *
FROM Artist a 
WHERE Name LIKE "AC_DC"


--Manipulação de dados

SELECT *
FROM Genre g 
LIMIT 10

SELECT *
FROM Genre g 
WHERE NAME LIKE "MPB"

--Codigo p/ adicionar algo na coluna
INSERT INTO Genre (GenreId, Name)
VALUES (NULL,"MPB")

--ID 277
SELECT *
FROM Artist a 
WHERE NAME LIKE "RPM"


INSERT INTO Artist (Name)
VALUES ("RPM")

--Adicionando dados nas tabelas

SELECT *
FROM Track t 


INSERT INTO Track 
VALUES 
(NULL, "Olhar 43", NULL, 1, 277, "RPM", 25000, 6000,599),
(NULL, "RADIO PIRATA", NULL, 1, 277, "RPM", 25000, 6000,599),
(NULL, "ALVORADA VORAZ", NULL, 1, 277, "RPM", 25000, 6000,599) 

SELECT *
FROM Track t 
WHERE GenreId = 277

--Atualização de dados de uma tabela
--Atualizar apenas 1 linha

SELECT * 
FROM Customer c
WHERE CustomerId = 2
limit 10

UPDATE Customer 
SET Company = "Ritter"
WHERE CustomerId = 2

--Atualizar toda tabela

SELECT *
FROM Customer c
WHERE Country LIKE "BRA_IL"


UPDATE Customer 
SET Country = "Brasil"
WHERE Country LIKE "Brazil"

--Exclusão de de Registro - DELETE

SELECT *
FROM Invoice i 
WHERE total >= 20
	AND BillingCountry LIKE "USA"
	
	
DELETE *
FROM Invoice i
WHERE total >= 20
AND BillingCountry LIKE "USA"

--Junção dos DADOS

SELECT *
FROM Album a 

SELECT *
FROM Artist a 

--Forma errada de juntar base de dados

SELECT COUNT(*)
FROM Album a ,Artist a2

--join

SELECT
	Album.Title as "Titulo do album"
	Artist.Name as "Nome do artista"
	Track.Name as "Nome da Musica"
FROM Album a  
INNER JOIN Artist a2
	on Album.ArtistId = Artist.ArtistId 
INNER JOIN Track t 
	on album.AlbumId = Track.AlbumId 
	
--Criar uma tabela
	
	CREATE TABLE Alunos(
	AlunoId INTEGER PRIMARY KEY AUTOINCREMENT,
	Nome VARCHAR (30),
	Idade INTEGER (3)
	);	
	

SELECT * FROM Alunos a 

INSERT INTO Alunos (Nome, Idade)
VALUES
	("Kelvin Bobsin", 24),
	("Fábio Araújo", 35),
	("José Ernesto", 32)
	
--Excluindo Tabela	
	

DROP TABLE Alunos

	
	

