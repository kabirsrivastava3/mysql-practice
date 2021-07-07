SHOW DATABASES;

CREATE DATABASE testing;

USE testing

SHOW TABLES;

CREATE TABLE pet (name VARCHAR(20), owner VARCHAR(20),
species VARCHAR(20), age int(10), sex CHAR(1), birth DATE, death DATE);

SHOW TABLES;

DESCRIBE pet;

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

SELECT * FROM pet;

UPDATE pet set birth = '1989-08-31' WHERE name = 'Bowser';

SELECT * FROM pet WHERE name = 'Bowser';

SELECT * FROM pet WHERE birth >= '1998-1-1';

SELECT * FROM pet WHERE species = 'dog' AND sex = 'f';

SELECT * FROM pet WHERE species = 'snake' OR species = 'bird';

SELECT * FROM pet WHERE (species = 'cat' AND sex = 'm')
OR (species = 'dog' AND sex = 'f');

SELECT name, birth FROM pet;

SELECT owner FROM pet;

SELECT DISTINCT owner FROM pet;

SELECT name, species, birth FROM pet
WHERE species = 'dog' OR species = 'cat';

SELECT name, birth FROM pet ORDER BY birth;

SELECT name, birth FROM pet ORDER BY birth DESC;

SELECT name, species, birth FROM pet
ORDER BY species, birth DESC;


SELECT name, birth, CURDATE(),
TIMESTAMPDIFF(YEAR,birth,CURDATE()) AS age
FROM pet;

SELECT name, birth, CURDATE(),
TIMESTAMPDIFF(YEAR,birth,CURDATE()) AS age
FROM pet ORDER BY name

SELECT name, birth, CURDATE(),
TIMESTAMPDIFF(YEAR,birth,CURDATE()) AS age
FROM pet ORDER BY age;


SELECT name, birth, death,
TIMESTAMPDIFF(YEAR,birth,death) AS age
FROM pet WHERE death IS NOT NULL ORDER BY age;

SELECT name, birth FROM pet ORDER BY birth DESC;

SELECT name, birth, death FROM pet

SELECT name, birth, IFNULL(death, "Alive") FROM pet

SELECT name, birth, IFNULL(death, "Alive") FROM pet

SELECT name, birth, IFNULL(death, "Alive") AS "Died On" FROM pet;

select name, owner from pet;

select species, name, sex, FROM pet;

select DISTINCT(species) from pet;

select all species from pet;

select name, birth, death from pet;

select name, age, species from pet where age>=16;

select * from pet where species in ('bird','snake', 'hamster')

select name, age from pet where age < 7;

select * from pet where (species = 'cat' || species='dog') && sex='m';

select * from pet where name like "F%";

select * from pet where name like "____";

select * name, age, sex from pet order by name desc; 

select concat(name, species) as "NameSpecies" from pet where age = 7 or age = 3;

select trim(' Bar One ')

select substring('Quadritically',5,6')

select mod(11,4) "Modulus", power(3,2) "Raised";

select truncate(15.79,1) "Truncate";

select CURDATE()+10

select date('2020-12-31 01:02:03')

select month('2020-02-03')

select now();

select now(), sleep(2), now();

select avg(age) "Average" from pet;

select count(*) "Total" from pet;

select count(age) "Age Count" from pet;

select count(*) "Total" from pet;

select max(age) "Maximum Age" from pet;

select min(age) "Minimum Age" from pet;

select sum(age) "Total Age" from pet;

select count(all name) from pet;

create table faculty
(
    id numeric(5) primary key,
    lastName varchar(30) not null,
    firstName varchar(30) not null,
    locationid numeric(5) references location(id),
    phone varchar(10),
    rank varchar(8),
    check ((rank = 'ASSO') or (rank = 'FULL') or (rank = 'ASST') or (rank = 'INST'))
    startdate date
); 




create table student
(
    id numeric(5) primary key,
    lastName varchar(30) not null,
    firstName varchar(30) not null,
    street varchar(25),
    city varchar(20),
    state char(5) default 'Del',
    zip varchar(9),
    phone varchar(10),
    class char(2) default 'FR',
    dob date,
    facultyid numeric(4) references faculty(id)
);


create table term
(
    id numeric(5) primary key,
    status varchar(30) not null,
    check ((status = 'OPEN') or (status = 'CLOSED'))
);

create table course
(
    id numeric(6) primary key,
    code varchar(10) not null,
    name varchar(25),
    credit numeric(2) default 3
);
    











