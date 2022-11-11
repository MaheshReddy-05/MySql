-- Aggregate Functions

CREATE TABLE marks(
    ID INT,
    StudName varchar(100),
    PhysicsMarks INT,
    Maths INT
);
INSERT INTO marks
VALUES (1,'Chintu','79','78'),
        (2,'Babbu','93','94'),
        (3,'Chitti','-10','-5') -- -ve for Over Action

-- Min and Max 

-- Finding Minimum Marks
SELECT MIN(PhysicsMarks) AS Lowest_Mark --During Output it will Represent Column Name as we Menctioned
FROM marks;

-- Finding Max Marks
SELECT MAX(PhysicsMarks) AS Highest_Mark 
FROM marks;

-- COUNT 
SELECT COUNT(StudName) AS Count_of_Students
FROM marks;

-- AVG
SELECT AVG(PhysicsMarks) AS AVG_PHY
FROM marks;

-- SUM
SELECT SUM(PhysicsMarks) AS Total_Marks
FROM marks;

-- We can Add Condition to the above Quries
SELECT COUNT(StudName) AS Toppers
FROM marks
WHERE PhysicsMarks > 60 ;

-- AND OR NOT Operations

-- And Operation 
SELECT *
FROM marks
WHERE PhysicsMarks >80 AND PhysicsMarks<95;

-- OR Operation
SELECT *
FROM marks
WHERE PhysicsMarks >80 OR StudName='Chitti';

-- NOT Operation
SELECT *
FROM marks
WHERE NOT PhysicsMarks >30 

-- Mixed OperatioSELECT *
FROM marks
WHERE NOT StudName = 'chitti' AND  (PhysicsMarks>70 OR Maths<40);

-- ORDER BY -
