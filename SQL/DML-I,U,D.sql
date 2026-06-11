show databases;
use dummy_db;
show tables;
describe employees;

Alter table employees modify column contact varchar(20);

INSERT INTO employees(emp_id,first_name,last_name,age,salary,city,contact)
values(1,'Rahul','Sharma',22,45000,'Mumbai','9849549559');

Select* from employees;

INSERT INTO employees(emp_id,first_name,last_name,age,salary,city,contact)
values(2,"Rakesh","Patil",24,65000,"PUNE",'9878545244');


SET SQL_SAFE_UPDATES = 0;   -- turn off safe mode

 --SWITCHING INTO BANKINGDB--
use bankingdb;
show tables;
describe customers;

                         --INSERT INTO customers TABLE--

INSERT INTO customers(CustomerID,FirstName,LastName,Email,Phone,AccountCreationDate,DateofBirth)
values(101,'Rahul','Sharma','rahul@gmail.com','9483949434','2025-05-01', '2000-09-20');

INSERT INTO customers(CustomerID,FirstName,LastName,Email,Phone,AccountCreationDate,DateofBirth)
values(102,'Priya','Patil','priya@gmail.com','5647989434','2025-05-03', '2000-09-20');

select*from customers;

                          --INSERT INTO accounts TABLE--
describe Accounts;

INSERT INTO Accounts(AccountID, CustomerID, AccountType, Balance)
VALUES(201, 101, 'Savings',25000);
INSERT INTO Accounts(AccountID, CustomerID, AccountType, Balance)
VALUES(202, 102, 'Current', 40000);

select*from accounts;
						 --UPDATE CUSTOMERS Phone--
UPDATE Customers
SET Phone = '9999999999'
WHERE CustomerID = 101;
                         --UPDATE CUSTOMER EMAIL--
UPDATE Customers
SET Email = 'priya.patil@gmail.com'
WHERE CustomerID = 102;

                        --DELETE ACCOUNTID=202--                        
DELETE FROM Accounts WHERE AccountID = 202;







