USE LibraryDatabase;

-- Task4 Queries Library Database
-- Library Database DQL & DML Tasks

-- 1. Display all book records. 
SELECT * FROM Book;
-- 2. Show each book’s title, genre, and availability. 
SELECT Title ,Genre , Available_State FROM Book;
-- 3. Display all members' names, email, and membership start date. 
SELECT CONCAT(FName ,' ',LName) AS FULLName , Email ,Member_Start_Date FROM Members;
-- 4. Display each book’s title and price with alias “BookPrice”. 
SELECT CONCAT (Title , ' ' , Price) AS BookPrice FROM Book;
-- 5. List books priced above 250 LE. 
SELECT Title FROM Book where Price > 250;
-- 6. List members who joined before 2023. 
SELECT CONCAT(FName ,' ',LName) AS FULLName FROM Members WHERE Member_Start_Date > 2023;

-- 7. Display names and roles of staff working in 'Zamalek Branch'. 
-- SELECT CONCAT (FName,' ', LName) AS FullName FROM Staff WHERE ;
-- 8. Display branch name managed by staff ID = 3008. 
-- SELECT L_Name from Library where Staff_ID =3008;
-- 9. List titles and authors of books available in branch ID = 2. 
 SELECT L_ID,Book_ID from LibraryBook ;
-- 10. Insert yourself as a member with ID = 405 and register to borrow book ID = 1011. 
insert into Members (M_ID,FName ,LName ,Email ,Member_Start_Date)
values 
(405,'Mathla','Alwahaibi' ,'mathlaalwahaibi@gmail.com','2020');

SET IDENTITY_INSERT Members ON -- to stop the ideintity in PK

SET IDENTITY_INSERT Members OFF -- to return the auto increment again
-- 11. Insert a member with NULL email and phone. 
insert into Members (FName ,LName ,Email ,Member_Start_Date)
values 
('Sara','Alwahaibi' ,'NULL','2021');
select * from Members;
insert into MembersPhoneNumber(M_ID,Phone_Number)
values 
(8,'NULL');
select * from MembersPhoneNumber;
-- 12. Update the return date of your loan to today.
