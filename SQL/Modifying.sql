create database dummy_db; --creating dummy_db database

show databases;  --showing database in server

use dummy_db;

CREATE TABLE employees(
  emp_id     INT            PRIMARY KEY,
  first_name VARCHAR(50)    NOT NULL,
  last_name  VARCHAR(50)    NOT NULL,
  age        INT            CHECK(age>=18),
  salary     DECIMAL(10,2)  NOT NULL,
  city       VARCHAR(50)    DEFAULT 'MUMBAI'
  );
  describe employees; --to describe the table structure
  
  --Renaming the table
  Alter table employees rename to staff;    --changing the table name employees to staff
  Alter table staff rename to employees;    --again change to employees
  
  --Add column
  Alter table employees add column phone int;
  Alter table employees add column email varchar(50);
  
  --Change column phone to contact
ALTER TABlE employees
change phone contact int not null;

--modify column email to add constraints
ALTER TABLE employees
modify email varchar(60) unique;

--DROP email column 
ALTER TABLE employees drop column email;

--SHIFTING TOWARDS BANKING_DB
show databases;
use bankingdb;
describe Customers;


ALTER TABLE Customers
ADD DateofBirth DATE;

ALTER TABLE CUSTOMERS
Modify Phone varchar(20);

ALTER TABLE Accounts
ADD CONSTRAINT chk_MinBalance
CHECK (Balance >= 1000);





  

  
  

