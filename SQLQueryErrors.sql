-- SQL Quary Errors in Task 7

-- Q1. Q10. Insert yourself as a member with ID = 405 and register to borrow book ID = 1011. 
insert into Members (M_ID,FName ,LName ,Email ,Member_Start_Date)
values 
(405,'Mathla','Alwahaibi' ,'mathlaalwahaibi@gmail.com','2020');

-- E1. Msg 544, Level 16, State 1, Line 26
-- Cannot insert explicit value for identity column in table 'Members' when IDENTITY_INSERT is set to OFF.


--(if we want to insert value in pK witch have id identity ( auto increment ) )

-- how to solve it  --

-- first 

SET IDENTITY_INSERT Members ON -- to temporarily allow manual insertion into an identity column

-- Then 

insert into Members (M_ID,FName ,LName ,Email ,Member_Start_Date)
values 
(405,'Mathla','Alwahaibi' ,'mathlaalwahaibi@gmail.com','2020');

--then 


SET IDENTITY_INSERT Members OFF -- to return the auto increment again

------------------------
------------------------

Explanation of SET IDENTITY_INSERT table_name ON and OFF in SQL Server:

-- SET IDENTITY_INSERT table_name ON is a SQL Server command that allows you to manually insert values into a table's IDENTITY column — a column that normally auto-generates values (like a primary key).

By default, SQL Server doesn't let you insert a value into an IDENTITY column — it automatically handles that. This command gives you temporary permission to do so.

-- SET IDENTITY_INSERT table_name OFF is a SQL Server command used to turn OFF manual insertion into a table's IDENTITY column.

-------

Syntax:

SET IDENTITY_INSERT table_name ON; -- Temporarily allow manual ID insert

INSERT INTO table_name (IdentityColumn, OtherColumn)
VALUES (5, 'example'); -- Manually insert a specific ID

SET IDENTITY_INSERT table_name OFF; -- Return to auto-increment mode
-----
Example :

SET IDENTITY_INSERT Members ON 

INSERT INTO Members (M_ID,FName ,LName ,Email ,Member_Start_Date)
VALUES 
(400,'Ali','Al','alial@gmail.com','2020');

SET IDENTITY_INSERT Members OFF 
