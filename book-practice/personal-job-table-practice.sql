


create table personal( empno int(5) primary key, firstName varchar(30) not null, dobirth date, native_place varchar(10), hobby varchar(20)); 

INSERT INTO personal VALUES ('123','Amit','1997-12-4','Delhi','Music');

INSERT INTO personal VALUES ('127','Manoj','1976-12-12','Mumbai','Writing');

INSERT INTO personal VALUES ('124','Abhai','1975-08-11','Allahabad','Music');

INSERT INTO personal VALUES ('125','Vinod','1977-04-04','Delhi','Sports');

INSERT INTO personal VALUES ('128','Abhay','1974-03-10','Mumbai','Gardening');

INSERT INTO personal VALUES ('129','Ramesh','1981-10-28','Pune','Sports');


---------------------------------------------------------------------------------------------------------------------------------

create table job( sno int(5) primary key, area varchar(10), app_date date, salary int(20), retd_date date, dept varchar(10)); 

INSERT INTO job VALUES ('123','Agra','2006-01-25','5000','2026-01-25','Marketing');

INSERT INTO job VALUES ('127','Mathura','2006-12-22','6000','2026-12-22','Finance');

INSERT INTO job VALUES ('124','Agra','2007-08-19','5500','2027-08-19','Marketing');

INSERT INTO job VALUES ('125','Delhi','2008-03-28','8500','2018-04-14','Sales');

INSERT INTO job VALUES ('128','Pune','2008-03-28','7500','2028-03-13','Sales');

-----------------------------------------------------------------------------------------------------------------------------------

select empno, firstName, salary from personal, job where empno = sno and hobby = 'Sports' ; --empno, name and salary of those who have Sports as hobby

select * from personal where (select min(dobirth) from personal) = dobirth ; --Name of the eldest employee.

select count(firstName) from personal, job where empno = sno group by area ; --Number of employee area wise.

select firstName from personal as a ,(select empno, max(dobirth) as d from personal group by native_place) as b where a.empno = b.empno and a.dobirth = b.d; --Youngest employees from each Native place.

select sno, firstName , hobby , salary from personal , job where empno = sno order by salary desc ; --Sno, Name, Hobby and Salary in descending order of Salary.

select hobby from personal where firstName = 'Abhay' ; -- the hobbies of those whose name pronounces as 'Abhay'

select app_date , native_place from personal , job where empno = sno and firstName like 'A%' and firstName like '%r' ; --the appointment date and native place of those whose name starts with 'A' or ends in 'd'.

select firstName from personal , job where empno = sno and retd_date > 20060120 ; --the salary expense with suitable column heading of those who shall retire after 20-jan-2006.

select salary + salary/10 “Additional_burden” from personal , job where empno = sno and hobby = 'Sports' ; --additional burden on the company in case salary of employees having hobby as sports, is increased by 10%.

select hobby from personal group by hobby having count(*) >= 2 ; --the hobby of which there are 2 or more employees.

select firstName from personal, job where empno = sno and (curdate()- app_date) >= 200000; -- how many employee shall retire today if maximum length of service is 20 years.

alter table job add column email char(100) ; --Insert a new column email in Job table.

create table new_table (select Empno , firstName, hobby from personal); --create a table with values of columns empno, name, and hobby.

select * from personal , job where empno = sno and (retd_date - app_date) < 150000 ; -- create a view of Personal and Job details of those who have served less than 15 years.

drop table personal; --Remove the table Personal.

