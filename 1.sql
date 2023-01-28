CREATE DATABASE masai;
USE masai;
CREATE TABLE Customers(
id int,
Name text,
Favourite_Color varchar(30)
);

-- HOW I READ THE TABLE / HOW DO I ACCESS THE DATA OF THE TABLE ?
-- --WE USE SELECT QUERY
-- INDICATE COLUMNS YOU WANT TO PRINT TO THE OUTPUT
SELECT id, Name, Favourite_Color FROM Customers;
-- or we can use the *
-- * is Representing all the columns of the columns of the table;
SELECT * FROM Customers;

-- Lets start inserting into the table
-- Inserting rows one by one
INSERT INTO Customers
Values 
(1,'PRASHANT','YELLOW')
;
SELECT * FROM Customers;
-- Other syntax for Inserting the rows

INSERT INTO Customers(id,Name,Favourite_Color)
VALUES
(10,'Anand','Red')
;
SELECT * FROM Customers;
INSERT INTO Customers(id,Name)
VALUES
(2,'Shilpa')
;
SELECT * FROM Customers;
INSERT INTO Customers
VALUES
(3,'nitin','Pink'),
(4,'Rihana','Cyan'),
(5,'EMINEM','GREEN')
;
SET SQL_SAFE_UPDATES = 0;
UPDATE hacker
SET Country = 'United States' 
WHERE Country = 'USA';

SELECT * FROM HACKER;
UPDATE hacker
SET name = 'anirudh Dixit'
WHERE name ='anidixit1008';

SELECT * FROM HACKER;

UPDATE hacker
SET name = 'anirudh Dixit 1008'
WHERE name ='anirudh Dixit';

SELECT * FROM HACKER;

UPDATE hacker
SET country = 'Spain'
-- WHAT IS THE PURPOSE OF WHERE ?
-- IDENTIFIES THE ROWS
WHERE Score = 10;

SELECT * FROM HACKER;

-- Another Method

UPDATE hacker
SET country = 'ITALY'
WHERE NAME IN('hshsharma127','anantauzir207','sharmatarun2098');

SELECT * FROM HACKER;

-- multiple update
-- UPDATE THE COUNTRY TO South Africa And Score to 200

UPDATE hacker
SET country = 'South Africa',Score = 200
WHERE name = 'tarunmer';
-- Name IN('tarunmer')
-- NAme='tarunmer';

SELECT * FROM HACKER;

-- UPDATE
-- WE UPDATED A SINGLE ROW'S VALUE
-- WE UPDATED MULTIPLE ROWS AT ONCE
-- WE UPDATE MULTIPLE COLUMN VALUES OF A SINGLE ROW AT ONCE


-- DELETE :
-- DELETE as A WHOLE
-- DELETE ROWS -> DELETE/TRUNCATE
-- ERASE TABLE OUT OF DATABASE -> DROP
-- ERASE DATABASE -> DROP

-- DELETE - DATA MANIPULATION LANGUAGE(DML)
-- TRUNCATE - DATA DEFINATION LANGUAGE (DDL)
-- DROP - DATA DEFINITION LANGUAGE COMMAND(DDL)

-- LETS CREATE TABLES AND APPLY DELETE AND TRUNCATE ON THE TABLE
CREATE TABLE  USER1(
ID int PRIMARY KEY auto_increment,
name varchar(30)
); 

CREATE TABLE  USER2(
ID int PRIMARY KEY auto_increment,
name varchar(30)
); 

-- LETS INSERT SAME DATA INTO THE 2 TABLES
INSERT INTO User1(Name)
VALUES
('ANKIT NANDA'),
('PRANAV');

INSERT INTO User2(Name)
VALUES
('ANKIT NANDA'),
('PRANAV');

-- REading the tables
SELECT * FROM user1;
SELECT * FROM user2;


-- LETS APPLY DELETE STATEMENT ON USER 1
DELETE FROM user1;

SELECT * FROM USER1;

truncate TABLE user2;
SELECT * FROM USER2;

INSERT INTO User1(Name)
VALUES
('NANDA'),
('PRA');

INSERT INTO User2(Name)
VALUES
('ANKITA'),
('PRAN');

SELECT * FROM USER1;
SELECT * FROM USER2;