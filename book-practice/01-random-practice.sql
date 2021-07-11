
--MYSQL Queries

----------------------------------------------------------------------------------------------------------------

SHOW DATABASES; --for showing all databases

CREATE DATABASE testing; --for creating a database

USE testing --for using a database

SHOW TABLES; --for showing all tables

CREATE TABLE pet (name VARCHAR(20), owner VARCHAR(20),
species VARCHAR(20), age int(10), sex CHAR(1), birth DATE, death DATE); --for creating a table with values

SHOW TABLES; 

DESCRIBE pet; --for describing a table i.e showing all attributes and types

---------------------------------------------------------------------------------------------------------------

--inserting values into table

INSERT INTO pet
VALUES ('Claws','Gwen','cat','6','m','2015-03-17',NULL);

INSERT INTO pet
VALUES ('Buffy','Harold','dog','5','f','2016-05-13',NULL);

INSERT INTO pet
VALUES ('Fang','Benny','dog','7','m','2014-08-27',NULL);

INSERT INTO pet
VALUES ('Bowser','Diane','dog','4','m','2017-08-31',NULL);

INSERT INTO pet
VALUES ('Puffball','Diane','hamster','3','f','2018-03-30',NULL);

INSERT INTO pet
VALUES ('Chirpy','Gwen','bird','1', 'f','2020-09-11',NULL);

INSERT INTO pet
VALUES ('Whistler','Gwen','bird','2', 'f','2019-12-09',NULL);

INSERT INTO pet
VALUES ('Slim','Benny','snake','3', 'm','2018-09-24',NULL);

-------------------------------------------------------------------------------------------------------------

-- Performing all SELECT operations on the table

SELECT * FROM pet; --displays all the inserted values into the table

UPDATE pet set birth = '1989-08-31' WHERE name = 'Bowser'; --updates birthdate of pet- 'Bowser'

SELECT * FROM pet WHERE name = 'Bowser'; --displays the row of pet- 'Bowser'

SELECT * FROM pet WHERE birth >= '1998-1-1'; --displays all rows of pets whose birthdate > 1-1-1998

SELECT * FROM pet WHERE species = 'dog' AND sex = 'f'; --displays all rows of pets who are 'dogs' and 'female'

SELECT * FROM pet WHERE species = 'snake' OR species = 'bird'; --displays all rows of pets who are 'snake' and 'bird' 

SELECT * FROM pet WHERE (species = 'cat' AND sex = 'm')
OR (species = 'dog' AND sex = 'f'); --displays all rows of pets who are either male cats or female dogs

SELECT name, birth FROM pet; --displays all columns of name and birthdate of pets 

SELECT owner FROM pet; --to find out who owns pets

SELECT DISTINCT owner FROM pet; -- to find out who owns pets, removes redundant values

SELECT name, species, birth FROM pet
WHERE species = 'dog' OR species = 'cat'; --to get birthdates for dogs and cats only

SELECT name, birth FROM pet ORDER BY birth; --animal name and birthdays, sorted by date in ascending order

SELECT name, birth FROM pet ORDER BY birth DESC; --animal name and birthdays, sorted by date in descending order

SELECT name, species, birth FROM pet
ORDER BY species, birth DESC; --animal name, species and birthdays, sorted by date and species in descending order


SELECT name, birth, CURDATE(),
TIMESTAMPDIFF(YEAR,birth,CURDATE()) AS age
FROM pet;   --how many years old each of your pets is, use the TIMESTAMPDIFF() function. 
---Its arguments are the unit in which you want the result expressed, and the two dates for which to take the difference.


SELECT name, birth, CURDATE(),
TIMESTAMPDIFF(YEAR,birth,CURDATE()) AS age
FROM pet ORDER BY name --the result could be scanned more easily if the rows were presented in some order. By adding an ORDER BY name clause

SELECT name, birth, CURDATE(),
TIMESTAMPDIFF(YEAR,birth,CURDATE()) AS age
FROM pet ORDER BY age; --sort the output by age rather than name, just use a different ORDER BY clause


SELECT name, birth, death,
TIMESTAMPDIFF(YEAR,birth,death) AS age
FROM pet WHERE death IS NOT NULL ORDER BY age; --determine which animals these are by checking whether the death value is NULL. 
--Then, for those with non-NULL values, compute the difference between the death and birth values



SELECT name, birth FROM pet ORDER BY birth DESC; --displays the value of both birth and MONTH(birth)

SELECT name, birth, death FROM pet -- displays the value of name, birthdate and deathdate from pet

SELECT name, birth, IFNULL(death, "Alive") FROM pet --substitute value for null in death 

SELECT name, birth, IFNULL(death, "Alive") AS "Died On" FROM pet; --to replace output heading as "Died On"

select name, owner from pet; --displays the value of name and owner from pet

select species, name, sex, FROM pet; -- displays the value of name, species and sex from pet

select DISTINCT(species) from pet; --display all distinct species of pet

select name, age, species from pet where age>=16; -- display name, age and species of pet whose ages are>=16

select * from pet where species in ('bird','snake', 'hamster') -- display species of 'bird', 'snake' and 'hamster'

select name, age from pet where age < 7; -- name and age of pets whose age < 7
 
select * from pet where (species = 'cat' || species='dog') && sex='m'; -- display either cat or dog but sex must be male

select * from pet where name like "F%"; --To find names ending with f

select * from pet where name like "____"; --To find names containing exactly five characters, use five instances of the _ pattern character

select * name, age, sex from pet order by name desc; --displays name, age amd sex from table pet and names in descending order

select concat(name, species) as "NameSpecies" from pet where age = 7 or age = 3; --concatenate name and species for pets having as a 7 or 3

select trim(' Bar One ') --removes leading and trailing white spaces

'---------------------------------------------------------------------------------------------

select substring('Quadritically',5,6')  --extracting substring from a string

select mod(11,4) "Modulus", power(3,2) "Raised"; --remainder of 11 divided by 4 and displays 3**2

select truncate(15.79,1) "Truncate"; --truncate 15.79 to 1 decimal place

select CURDATE()+10 --display date after 10 days

select date('2020-12-31 01:02:03') --extract date from given datetime value '2020-12-31 01:02:03'

select month('2020-02-03') --display February 03, 2020

select now(); --display current date and time

select now(), sleep(2), now(); --difference between now() and sysdate()
 
select avg(age) "Average" from pet; --average age of all pets

select count(*) "Total" from pet; --count total number of pets

select count(age) "Age Count" from pet; --count number of ages in table pet

select max(age) "Maximum Age" from pet; --returning maximum age from all pets from table pet

select min(age) "Minimum Age" from pet; --returning minimum age from all pets from table pet

select sum(age) "Total Age" from pet; --returning sum of all ages from pets from table pet

select count(all name) from pet; --returning counting all names of all pets including repeats from table pet

-----------------------------'
