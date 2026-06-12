use bankingdb;

select*from accounts where accountType IN ('CURRENT','Savings') ;
select*from accounts; 

   -- top 5 balance from accounts table
Select* from accounts where balance order by balance desc limit 5;

  -- top 3 savings accounttype
select*from accounts where AccountType="Savings"order by balance  desc limit 3;

 -- Customers where name start with A
 select*from customers where firstname like "A%";
 
 -- Search customers whose Email Contains "gmail"
select*from customers where Email like "%gmail%";
 
 select*from customers where lastname like "%kar";
 
 -- String functions --
 select firstname,lastname,concat(firstname," ",Lastname) as Full_Name from customers;
 
 
 -- 2.Upper & Lower
 select upper(FirstName) as FirstName from customers;
 select lower(LastName) as FirstName from customers;
 
  -- 3.Substrings---
select FirstName, substring(FirstName,2,3)from customers;

-- 4. Replace--
select replace('hello world','world','sql') as replaced_string;
 
 

