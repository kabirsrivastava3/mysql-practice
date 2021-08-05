USE testing 

SHOW TABLES; 

CREATE TABLE employee(employeeId int(10) not null auto_increment primary key, name VARCHAR(20) not null, department VARCHAR(20), salary DECIMAL(20,2), age int(10), sex CHAR(1), startDate DATE, endDate DATE); 

SHOW TABLES; 

DESCRIBE employee; 


INSERT INTO employee VALUES ('1','John','IT','120000.00','m','2015-05-09','2016-05-09');

INSERT INTO employee VALUES ('2','Selena','HR','18000.00','f','2014-02-27','2017-04-02');

INSERT INTO employee VALUES ('3','Keanu','R&D','275000.87','m','2016-06-04','2019-04-02');

INSERT INTO employee VALUES ('4','Lanchester','Accounting','400000.47','f','2018-08-04','');

INSERT INTO employee VALUES ('5','Gwen','Marketing','2000000.58','f','2020-09-19','2020-11-28');

INSERT INTO employee VALUES ('6','Dora','Purchasing','20000.50','f','2013-12-10','2020-02-28');

INSERT INTO employee VALUES ('7','Jack','Production','10000000.27','m','2019-01-01','2021-06-18');

INSERT INTO employee VALUES ('8','Lyra','Finance','456876.90','f','2021-11-29','');


SELECT * FROM pet;

-------------------------------------------------------------------------------------------------------------

SELECT * FROM employee;

UPDATE employee SET startDate = '2021-08-04' WHERE name = 'Lyra';

SELECT * FROM employee WHERE name = 'Lyra';

SELECT name, salary FROM employee;

SELECT name, sex, department FROM employee WHERE name IS NOT NULL;

SELECT * FROM employee ORDER BY department DESC;

SELECT * FROM employee WHERE department = 'Finance' AND name = 'Lyra';

SELECT * FROM employee WHERE NOT sex = 'm';

SELECT * FROM employee WHERE salary between 18000 and 1000000;

SELECT employeeId FROM employee 
WHERE name='Gwen' AND sex='f';

SELECT * from employee WHERE name like '%A';

SELECT * FROM employee WHERE (startDate - endDate) < 40000 ; 

DELETE FROM employee where name = 'John';

ALTER TABLE employee ADD column email char(100);

