DROP DATABASE Babycareproduct;
create database Babycareproduct;
use Babycareproduct;

create table Babycareproduct(
product_id int(11) NOT NULL AUTO_INCREMENT,
product_name varchar(25) DEFAULT NULL,
category varchar(25) DEFAULT NULL,
price numeric(7,2) DEFAULT NULL,
dateOfManufacture date,
dateOfExpiry date,
PRIMARY KEY (product_id)

);
INSERT INTO Babycareproduct VALUES(4,'TShirts','clothes',850,'2019-08-07','2020-06-15');
INSERT INTO Babycareproduct VALUES(5,'Towels','clothes',150,'2019-01-05','2020-12-31');
INSERT INTO Babycareproduct VALUES(6,'Pushchair','Accessories',7500,'2018-01-02','2020-06-02');
INSERT INTO Babycareproduct VALUES(7,'ShootingGun','Toy',950,'2020-01-02','2020-06-02');
INSERT INTO Babycareproduct VALUES(8,'StylishDress','Fashion',1250,'2020-01-05','2020-05-09');



create table login(
uname varchar(20),
pass varchar(20));

insert into login values('sanju','Sanju@123');

select * from Babycareproduct;
select * from login;
