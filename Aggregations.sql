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

-- And OR NOT Operations
