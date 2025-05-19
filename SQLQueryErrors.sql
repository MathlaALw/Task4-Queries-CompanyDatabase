-- Q1. Q10. Insert yourself as a member with ID = 405 and register to borrow book ID = 1011. 
insert into Members (M_ID,FName ,LName ,Email ,Member_Start_Date)
values 
(405,'Mathla','Alwahaibi' ,'mathlaalwahaibi@gmail.com','2020');

-- E1. Msg 544, Level 16, State 1, Line 26
-- Cannot insert explicit value for identity column in table 'Members' when IDENTITY_INSERT is set to OFF.


--(if we want to insert value in pK witch have id identity ( auto increment ) )

-- how to solve it  --

-- first 

SET IDENTITY_INSERT Members ON -- to stop the ideintity in PK

-- Then 

insert into Members (M_ID,FName ,LName ,Email ,Member_Start_Date)
values 
(405,'Mathla','Alwahaibi' ,'mathlaalwahaibi@gmail.com','2020');

--then 


SET IDENTITY_INSERT Members OFF -- to return the auto increment again

------------------------

