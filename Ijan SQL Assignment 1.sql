create table Employees (
Employee_Number int, Last_Name varchar(50), First_Name varchar(50));
Alter table employees
add (Office_Code int);
select *from employees
Insert into employees (Employee_Number, Last_Name, First_Name, Office_code)
Values (001, 'Seun', 'Paul', 200);
select *from employees
Insert into employees (Employee_Number, Last_Name, First_Name, Office_code)
Values (002, 'Felix', 'Duru', 210),
(003, 'John', 'Smith', 220),
(004, 'Samson', 'Ola', 230);
select *from employees
Create table Offices (
Office_Code int, City varchar (50), State varchar (50), Country varchar (50));
alter table Offices
drop column Country;
insert into Offices (Office_Code, City, State)
Values (200, 'Ikeja', 'Lagos'),
(210, 'Ibadan', 'Oyo'),
(220, 'Makurdi', 'Benue'),
(230, 'Cross_River', 'Calabar');
create table Customer (
Customer_Number int, First_Name varchar (50), Last_Name varchar (50), State varchar (50));
insert into Customer (Customer_Number, First_Name, Last_Name, State)
values (22140, 'Samuel', 'Jackson', 'Lagos'),
(22150, 'Curtis', 'Jones', 'Abuja'),
(22160, 'Christian', 'Santos', 'Imo'),
(22170, 'Angel', 'Francis', 'Bayelsa');
create table Payments (
Customer_Number int, Cheque_Number int, Amount int);
insert into Payments (Customer_Number, Cheque_Number, Amount)
Values (22140, 11510, 200),
(22150, 11520, 500),
(22160,11530, 600),
(22170, 11540, 700);
update Customer 
set State = 'Calabar' 
where first_Name = 'Angel'
select *from Customer
select Customer_Number, Cheque_Number, Amount, Amount + 200 as New_Amount from Payments;
select *from Payments where Amount = 600;
select *from payments where Amount > 200 and Cheque_Number = 11520
ALTER TABLE Employees
ADD PRIMARY KEY (Employee_Number);
ALTER TABLE customer
ADD PRIMARY KEY (Customer_Number);
ALTER TABLE offices
ADD PRIMARY KEY (Office_Code);
ALTER TABLE payments
ADD PRIMARY KEY (Cheque_Number);
ALTER TABLE employees
ADD FOREIGN KEY (Office_Code)
references Offices (Office_Code)
ON DELETE SET NULL;
ALTER TABLE Payments
ADD FOREIGN KEY (Customer_Number)
REFERENCES Customer (Customer_Number)
ON DELETE SET NULL;

/* The queries used here on this work are explained as follows,

Create; Create was used here to create and add tables ( Customer, Employees, Offices and Payments) to the schema.
Alter; Alter makes changes to the table already created. Employee and Offices table were altered here.
Select; Select extracts data from the database.
Insert Into; inserts new data into the database. 
Drop column. this drops the column already created and tagged to be dropped. The Country column was dropped from the Offices table.
Where; The where clause was used to filter records that specify a specific condition.
Primary Key;The Primary keys contain Unique Values, and cannot contain NULL values.
The primary keys for the respective Tables (Customer, Employees, Offices, Payments) are Employee_Number, Office_Code, Customer_Number and Cheque_Number.
Foreign Key;The Foreign Key is a field in one table that refers to the Primary Key in another table.
The column Office Code is a Foreign Key in the table 'Employees', as it is a Primary Key in the table 'Offices'. */