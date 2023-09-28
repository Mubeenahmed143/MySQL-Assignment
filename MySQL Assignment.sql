create database Emp_details;
use Emp_details;

create table Emp_Data(
EmployeeID int not null unique,
Name varchar(30) not null,
Location varchar(30) not null,
Salary varchar(20) not null,
Dept varchar(30)
);

insert into Emp_Data (EmployeeID, Name, Location, Salary, Dept ) values ("1001", "Daniel", "Princeton", "10000", "Finance"),
("1002", "Anna", "Ohio", "15000", "Sales"),("1003", "Emma", "New Jersey", "12500", "Marketing"),
("1004", "Charles", "Mexico", "20000", "Finance"),("1005", "Kipp", "Florida", "25000", "Legal");

-- MySQL WHERE Clause with a single condition
select * from Emp_Data where EmployeeID = '1005';


-- MySQL WHERE Clause with AND operator
select * from Emp_Data where Dept = 'Finance' AND Salary > 1000;

-- MySQL WHERE Clause with OR operator
select * from Emp_Data where Location = 'Princeton' OR Location = 'Ohio';

-- MySQL WHERE Clause with a combination of AND and OR conditions
select * from Emp_Data where Dept = 'Marketing' AND (Location = 'New Jersey' OR Location = 'Princeton' );