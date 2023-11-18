-- 32. Tables Basics Activity. 
-- Creating a database and and table in the database. 
CREATE DATABASE bakery_shop;
USE bakery_shop;
CREATE TABLE pastries(
name varchar(50),
quantity int);
SHOW tables;
DESC pastries;
DROP TABLE pastries; 

-- 36. Insert values into tables
USE pet_shop;
CREATE TABLE cats(
name varchar(50),
breed varchar(50),
age INT);
SHOW tables;
DESC cats;
-- List out the column names first, then the values.
-- The values must follow the order of the column names 
INSERT INTO cats(name, age)
VALUES ('Jetson', 7);
INSERT INTO cats(name, age)
VALUES ("Pumpkin", 5);

-- 38. To check if the INSERT worked
-- SELECT * FROM <table name> : To view all rows in our table
SELECT * FROM cats;

-- NOTE: Order matters
-- Column order does not have to follow ordering in the actual table, as long as the columns is consistent with the value. 
INSERT INTO cats (age, name)
VALUES (2, "Lilo");
SELECT * FROM cats;

-- 40. Multiple Insert
-- Set of values seperated by comma(,)
INSERT INTO cats(name, age)
VALUES 
	("Meatball", 5),
	("Turkey", 1),
	("Potatoface", 10);
SELECT * FROM cats;

-- 42. INSERT Exercise
CREATE DATABASE company;
USE company;
CREATE TABLE people(
first_name VARCHAR(20),
last_name VARCHAR(20),
age INT);
SHOW tables;
DESC people;

INSERT INTO people(first_name, last_name, age)
VALUES
	("Tina", "Belcher", 13),
    ("Bob", "Belcher", 32),
    ("Linda", "Belcher", 45),
    ("Phillip", "Frond", 38),
    ("Calvin", "Fischoeder", 70);
SELECT * FROM people;

-- 44. Working with NOT NULL
-- NOTE: Null YES means that the column is allowed to be Null (no value)
INSERT INTO people(first_name) VALUES ("Ain");
SELECT * FROM people;

-- Adding a constraint, which is that the column cannot be Null.
CREATE TABLE people2(
	first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL, 
    age INT NOT NULL
    );
DESC people2;

-- 46. Quotes in MySQL. Best to use single quote to write text.
CREATE TABLE shops(name VARCHAR(100));
INSERT INTO shops(name) VALUES('Bata');
-- escaping a quote inside a piece of text by putting backslash \
INSERT INTO shops(name) VALUES('Mario\'s Pizza');
-- if there is a double quote (") inside a piece of text, you don't need to escape anything
INSERT INTO shops(name) VALUES('They scream, "Ice cream!"');
SELECT * FROM shops;

-- 47. Adding DEFAULT Values
USE pet_shop;
CREATE TABLE cats2
	(
		name VARCHAR(20) DEFAULT 'unnamed',
		age INT DEFAULT 99
	);
INSERT INTO cats2(age) VALUES(2);
INSERT INTO cats2() VALUES();
SELECT * FROM cats2;

-- Combine NOT NULL and DEFAULT:
CREATE TABLE cats3(
name VARCHAR(20) NOT NULL DEFAULT 'unnamed',
age INT NOT NULL DEFAULT 99
);
DESC cats3;
INSERT INTO cats3() VALUES();
SELECT * FROM cats3;

-- 49. Introducing Primary Keys
CREATE TABLE unique_cats (
	cat_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL
);
DESC unique_cats;
INSERT INTO unique_cats(cat_id, name, age) VALUES (1, 'bingo', 2);
SELECT * FROM unique_cats;

-- Note: Primary Key cannot be NULL.
-- So specificing NOT NULL to a column with Primary Key is REDUNDANT. 

-- 51. Working with AUTO_INCREMENT
-- setting AUTO_INCREMENT to your primary key fields. 
-- to automatically increment
CREATE TABLE unique_cats(
cat_id INT AUTO_INCREMENT, 
name VARCHAR(100),
age INT, 
PRIMARY KEY (cat_id)
);
DESC unique_cats;
INSERT INTO unique_cats(name, age) VALUES ('Boba', 3);
SELECT * FROM unique_cats;
INSERT INTO unique_cats(name, age) VALUES ('Boba', 3);
INSERT INTO unique_cats(name, age) VALUES ('Boba', 3);
INSERT INTO unique_cats(name, age) VALUES ('Boba', 3);
SELECT * FROM unique_cats;
INSERT INTO unique_cats() VALUES ();
INSERT INTO unique_cats() VALUES ();
SELECT * FROM unique_cats;

-- 53. create Table / Insert Exercise
CREATE TABLE Employees(
id INT AUTO_INCREMENT PRIMARY KEY, 
last_name VARCHAR(100) NOT NULL,
first_name VARCHAR(100) NOT NULL,
middle_name VARCHAR(100),
age INT NOT NULL, 
current_status VARCHAR(100) NOT NULL DEFAULT 'employed'
);
DESC Employees;
INSERT INTO Employees (first_name, last_name, age)
	VALUES ('Thomas', 'Adams', 20);
    SELECT * FROM Employees;

-- Section 5: CRUD Basics
DROP TABLE cats;
CREATE TABLE cats (
    cat_id INT AUTO_INCREMENT,
    name VARCHAR(100),
    breed VARCHAR(100),
    age INT,
    PRIMARY KEY (cat_id)
); 

DESC cats;
-- Insert some cats:

INSERT INTO cats(name, breed, age) 
VALUES ('Ringo', 'Tabby', 4),
       ('Cindy', 'Maine Coon', 10),
       ('Dumbledore', 'Maine Coon', 11),
       ('Egg', 'Persian', 4),
       ('Misty', 'Tabby', 13),
       ('George Michael', 'Ragdoll', 9),
       ('Jackson', 'Sphynx', 7);
SELECT * FROM cats;

-- 59. SELECT
-- SELECT * FROM 
-- * means 'all the'. meaning select/show me all the columns from the table
-- we can specificy the column from the table. if multiple, seperate with comma.
SELECT * FROM cats;
SELECT age FROM cats;
SELECT name, age FROM cats;

-- 61. WHERE clause
-- to narrow down the rows that we want to work with
-- Note: dont have to SELECT the columns that we want to work with. 
SELECT * FROM cats WHERE age=4;
SELECT name FROM cats WHERE age=4;
SELECT * FROM cats WHERE name='egg'; -- case insensitive. Egg or Egg , still give the same result

-- 63. Rapid Fire Exercise: Write the query that select teh following
-- Exercise 1:
SELECT cat_id FROM cats;
-- Exercise 2:
SELECT name, breed FROM cats;
-- Exercise 3:
SELECT name, age FROM cats WHERE breed='Tabby';
-- Exercise 4;
SELECT cat_id, age FROM cats WHERE cat_id=age;

-- 66. Aliases
-- Easier to read results
-- Temporary only for the query, it do not actually changethe column name
SELECT cat_id AS id, name FROM cats;

--68. Using UPDATE
UPDATE cats SET breed='Shorthair' WHERE breed='Tabby';
UPDATE cats SET age=14 WHERE name='Misty';
SELECT * FROM cats;


  
    








