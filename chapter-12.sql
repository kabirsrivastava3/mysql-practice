create table customer (custnumb int(10), custname varchar(20),
fulladdress text(1000), balance float(10,2), credlim int(10), slsrnumb int(10));

INSERT INTO customer VALUES ('124','Tina Adams','add 1','418000.75','50000','3');

INSERT INTO customer VALUES ('256','R Vekant','add 2','100000.75','80000','6');

INSERT INTO customer VALUES ('311','Prakash D','add 3','20000.10','30000','12');

INSERT INTO customer VALUES ('315','K R Rao','add 4','32000.75','30000','6');

INSERT INTO customer VALUES ('405','Bob M','add 5','20100.75','80000','12');

INSERT INTO customer VALUES ('412','Lubna Adams','add 6','90800.75','100000','3');

INSERT INTO customer VALUES ('522','Prabhnoor Singh','add 7','49000.50','80000','12');

INSERT INTO customer VALUES ('567','Bhuvna Balaji','add 8','20100.20','30000','6');

INSERT INTO customer VALUES ('587','Jabbar Ali','add 9','57000.75','50000','6');

INSERT INTO customer VALUES ('622','Pratham Jain','add 10','57500.50','50000','3');

-------------------------------------------------------------------------------------------------------

create table orderDetails (ordnumb int(10), partnumb varchar(20),
numbord int(10), quotpric float(10,2));


INSERT INTO orderDetails VALUES ('12489','AX12','11',14.95);

INSERT INTO orderDetails VALUES ('12491','BT04','1',402.99);

INSERT INTO orderDetails VALUES ('12491','BZ66','1',311.95);

INSERT INTO orderDetails VALUES ('12494','CB03','4',175.00);

INSERT INTO orderDetails VALUES ('12495','CX11','2',57.95);

INSERT INTO orderDetails VALUES ('12498','AZ52','2',22.95);

INSERT INTO orderDetails VALUES ('12498','BA74','4',4.95);

INSERT INTO orderDetails VALUES ('12500','BT04','1',402.99);

INSERT INTO orderDetails VALUES ('12504','CZ81','2',108.99);

--------------------------------------------------------------------------------------------------------

create table orders (ordnumb int(10), custno int(10), orddte date);

INSERT INTO orders VALUES ('12489','124','2018-03-01');

INSERT INTO orders VALUES ('12491','311','2018-03-10');

INSERT INTO orders VALUES ('12494','315','2018-03-31');

INSERT INTO orders VALUES ('12495','256','2018-04-15');

INSERT INTO orders VALUES ('12498','522','2018-04-16');

INSERT INTO orders VALUES ('12500','124','2018-04-21');

INSERT INTO orders VALUES ('12504','522','2018-05-05');

----------------------------------------------------------------------------------------------------------

create table parts (partnumb varchar(10), partdesc varchar(20), unonhand int(10),
itemclass varchar(10), wrehsnm int(10), unitprice float(10,2));

INSERT INTO parts VALUES ('AX12','IRON','104','HW','3','17.95');

INSERT INTO parts VALUES ('AZ52','SKATES','20','SG','2','24.95');

INSERT INTO parts VALUES ('BA74','BASEBALL','40','SG','1','4.95');

INSERT INTO parts VALUES ('BH22','TOASTER','95','HW','3','34.95');

INSERT INTO parts VALUES ('BT04','STOVE','11','AP','2','402.99');

INSERT INTO parts VALUES ('BZ66','WASHER','52','AP','3','311.95');

INSERT INTO parts VALUES ('CA14','SKILLET','2','HW','3','19.95');

INSERT INTO parts VALUES ('CB03','BIKE','44','SG','1','187.5');

INSERT INTO parts VALUES ('CX11','MIXER','112','HW','3','57.95');

INSERT INTO parts VALUES ('CZ81','WEIGHTS','208','SG','2','108.99');

----------------------------------------------------------------------------------------------------------