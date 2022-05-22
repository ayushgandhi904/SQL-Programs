create database hello; 

use hello;

create table Persons(
	PersonID int not null auto_increment,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255),
    Age int,
    primary key (PersonID)
);

alter table Persons
add email varchar(255);

alter table Persons
add DOB date;

alter table Persons
add Salary int; 

alter table Persons 
drop column DOB;

insert into 
Persons(LastName, FirstName, Address, City, Age, Email, Salary)
values('Gandhi', 'Ayush', 'Gujarat', 'Vadodara', 22, 'ayushgandhi904@gmail.com', 100000);

update Persons
set email = 'ayushgandhi@gmail.com' where PersonID = 1;

alter table Persons modify email varchar(255) not null;

insert into Persons(LastName, FirstName, Address, City, Age, Email, Salary)
values('Gandhi', 'Hemil', 'Gujarat', 'Ahemdabad', 18, 'hemilgandhi904@gmail.com', 100000);

update Persons 
set Salary = 5000 where PersonID = 1 or PersonID = 2;

insert into Persons(LastName, FirstName, Address, City, Age, Email, Salary)
values('Shah', 'Diya', 'Gujarat', 'Ahemdabad', 20, 'diyashah@gmail.com', 50000);

insert into Persons(LastName, FirstName, Address, City, Age, Email, Salary)
values('Shah', 'Anuska', 'Haryana', 'Gurgoon', 16, 'anu@yahoo.com', 1500000);



select * from Persons where FirstName = 'Ayush'
select * from Persons where Salary >5000; 

select max(Salary) from Persons;
select avg(Salary) from Persons;

select * from Persons where city = "Vadodara" and Salary >= 5000;

select * from Persons where email like '%gmail%' and salary >= 4000;

select * from Persons where city in ('Ahemdabad', 'Vadodara')

