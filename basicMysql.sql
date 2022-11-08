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


