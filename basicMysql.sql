-- Creating Database
CREATE DATABASE university;

-- Selecting Database
 USE university;

--  Creating Table 
CREATE TABLE student(
    StudName varchar(50),
    RollNo INT,
    Phone INT,
    Address varchar(100)
);

-- Alter Table     Adding New Column
ALTER TABLE student 
ADD column Location varchar(40);

-- Alter Table    Modify column datatype
ALTER TABLE student 
MODIFY COLUMN RollNo varchar(20);

-- Alter Table Drop column 
ALTER TABLE student
DROP COLUMN Location;

-- Drop Table 
DROP TABLE student;

-- Drop Database
DROP DATABASE university;

-- SQL Constraints Examples

-- NOT NULL Constrain
CREATE TABLE IF NOT EXISTS student(
    StudID INT NOT NULL,
    Name VARCHAR(200) NOT NULL,
    Age INT,
    City VARCHAR(30)
);

-- CHECK Constrain
CREATE TABLE IF NOT EXISTS student(
    StudID INT NOT NULL,
    Name VARCHAR(200) NOT NULL,
    Age INT,
    City VARCHAR(30),
    CHECK (Age>=18) 
);

--  DEFAULT Constrain
CREATE TABLE IF NOT EXISTS student(
    StudID INT NOT NULL,
    Name VARCHAR(200) NOT NULL,
    Age INT,
    City VARCHAR(30) DEFAULT 'NRT', 
);

-- UNIQUE Cpnstrain
CREATE TABLE IF NOT EXISTS student(
    StudID INT NOT NULL UNIQUE,
    Name VARCHAR(200) NOT NULL,
    Age INT,
    City VARCHAR(30),
    CHECK (Age>=18) 
);

-- PRIMARY KEY Constrain
CREATE TABLE IF NOT EXISTS student(
    StudID INT NOT NULL UNIQUE,
    Name VARCHAR(200) NOT NULL,
    Age INT,
    City VARCHAR(30),
    CHECK (Age>=18),
    PRIMARY KEY (StudID)
);

-- FOREIGN KEY Constrain
CREATE TABLE IF NOT EXISTS student(
    StudID INT NOT NULL,
    Name VARCHAR(200) NOT NULL,
    Age INT,
    City VARCHAR(30),
    PRIMARY KEY (StudID),
    FOREIGN KEY (Age) REFERENCES agetable(Age)
);

-- Insert Operations    --

INSET INTO student(StudName,RollNo,Phone,Address)
VALUES('Chintu','1','7395943197','100 Salampad Bodhan TS');

-- Multiple Inserctions 
INSET INTO student(StudName,RollNo,Phone,Address)
VALUES ('Chitti','2','838233293','101 Nizamabad TS'),
        ('Babbu','3','293928238','101 Nizamabad TS');

-- Select Operations

-- Select all Rows 
SELECT *
FROM student;

-- Printing Only column Details
SELECT Address 
FROM student;

-- Printing more Columns
SELECT StudName,Address 
FROM student; 

-- Condition Based Selection
SELECT *
FROM student
WHERE StudName = 'Chintu';

-- UPDATE 

-- Single Update
UPDATE student
SET Address = '101 Hyderabad TS'
WHERE StudName = 'Chintu';

-- Multiple Update
UPDATE student
SET Address = '101 Hyderabad TS',StudName='Surender'
WHERE StudName = 'Chintu';

-- DELETE 

-- Delete a row based on codndition
DELETE FROM student
WHERE StudName = 'Chintu';