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

-- Time 33 min Link https://www.youtube.com/watch?v=5YCeDPITsZA&list=PLrk5tgtnMN6RP0PMnyBVI15N_phCQevZM&index=13
