
--4 tables are created for practicing questions
----------------------------------------------------------------------------

create table faculty( id numeric(5) primary key, lastName varchar(30) not null, firstName varchar(30) not null, locationid numeric(5) references location(id), phone varchar(10), rank varchar(8), check ((rank = 'ASSO') or (rank = 'FULL') or (rank = 'ASST') or (rank = 'INST')) startdate date); 

create table student( id numeric(5) primary key, lastName varchar(30) not null, firstName varchar(30) not null, street varchar(25), city varchar(20), state char(5) default 'Del', zip varchar(9), phone varchar(10), class char(2) default 'FR', dob date, facultyid numeric(4) references faculty(id));

create table term( id numeric(5) primary key, status varchar(30) not null, check ((status = 'OPEN') or (status = 'CLOSED')));

create table course( id numeric(6) primary key, code varchar(10) not null, name varchar(25), credit numeric(2) default 3);
    
----------------------------------------------------------------------------------------------------------------
--inserting values into table salesrep (PRIS 13.2)

INSERT INTO SALESREP VALUES (3,'Anusha Jain','BH 130','2150.00','0.05');

INSERT INTO SALESREP VALUES (6,'Kulwant Singh','K 2130','4912.00','0.07');

INSERT INTO SALESREP VALUES (12,'Sam Brown','310','add 3','2150.00','0.05');

-----------------------------------------------------------------------
--inserting values into table location (PRIS 13.2)

INSERT INTO location VALUES ('53','BUS','424','1');

INSERT INTO location VALUES ('54','BUS','402','1');

INSERT INTO location VALUES ('45','CR','101','150');

INSERT INTO location VALUES ('46','CR','202','40');

INSERT INTO location VALUES ('47','CR','103','35');

INSERT INTO location VALUES ('48','CR','105','35');

INSERT INTO location VALUES ('49','BUS','404','42');

INSERT INTO location VALUES ('50','BUS','421','35');

INSERT INTO location VALUES ('51','BUS','211','35');

INSERT INTO location VALUES ('52','BUS','433','55');

INSERT INTO location VALUES ('55','BUS','217','1');

INSERT INTO location VALUES ('56','LIB','103','1');

INSERT INTO location VALUES ('57','LIB','222','1');


-----------------------------------------------------------------------------
--inserting values into table student (PRIS 13.2)

INSERT INTO student VALUES ('100','Mittal','Suhani','144 AB Street','Mum','Mah','400001','555986','SR',Date('1999-07-14'),1);

INSERT INTO student VALUES ('101','Robinson','Brian','454 K Nagar','Delhi','Del','110001','5552345','SR',Date(1998-08-19),1);

INSERT INTO student VALUES ('102','Merchant','Danish','8291 kh khlhlklj','Kolkata','WB','547105','5553907','JR',Date(1997-10-10),1);

INSERT INTO student VALUES ('103','Mojumdar','Anusha','1716 fhf jgj','Chennai','Tam','547003','5556902','SO',Date(1998-09-24),2);

INSERT INTO student VALUES ('104','Swami','Rajendran','1780 gdgk yriux','Delhi','Del','647001','5558999','SO',Date(1997-12-20),4);

INSERT INTO student VALUES ('105','Kaur','Simran','oflee','Delhi','Del','110071','555973','FR',Date(1997-12-4),3);


-----------------------------------------------------------------------------
--inserting values into table term (PRIS 13.2)

INSERT INTO term VALUES ('Term1 2013','CLOSED');

INSERT INTO term VALUES ('Term1 2014','CLOSED');

INSERT INTO term VALUES ('Term2 2014','OPEN');

INSERT INTO term VALUES ('Term3 2013','OPEN');

INSERT INTO term VALUES ('Term1 2014','OPEN');

INSERT INTO term VALUES ('Term1 2014','OPEN');

INSERT INTO term VALUES ('Term2 2015','OPEN');

INSERT INTO term VALUES ('Term3 2015','OPEN');

-----------------------------------------------------------------------------

--inserting values into table course (PRIS 13.2)

INSERT INTO course VALUES (1,'MIS 101','Intro to Info Systems',3);

INSERT INTO course VALUES (2,'MIS 301','Systems Analysis',3);

INSERT INTO course VALUES (3,'MIS 441','Database Management',3);

INSERT INTO course VALUES (4,'CS 083','Programming in C++',3);

INSERT INTO course VALUES (5,'CS 083N','Programming in Python',3);

-----------------------------------------------------------------------------