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
    
    








