CREATE DATABASE AB104
USE AB104

CREATE TABLE Students(
    [Name] VARCHAR(50) NOT NULL,
    [Surname] VARCHAR(50) DEFAULT 'XXX',
    [Age] INT CHECK(Age>16),
    [AvgPoint] DECIMAL(5,2) CHECK(AvgPoint>=0 and AvgPoint<=100)
)

 INSERT INTO Students VALUES
    ('Nigar' , 'Gulmaliyeva',19,81),
    ('Sabuhi', 'Camalzade',21,30),
    ('Asiman', 'Qasimzade',20,25),
    ('Zuzu', 'Qurbanova',19,91),
    ('Shamama', 'Guliyeva',19,99),
    ('Resad', 'Rufullayev',23,45)
 
  INSERT INTO Students VALUES
    ('Nihat' , 'Rehmetzade',19, 55.60)

SELECT * FROM Students WHERE AvgPoint>51;

SELECT * FROM Students WHERE AvgPoint>51 AND AvgPoint<90;

SELECT CONCAT(Name, ' ', Surname) AS "Full Name" FROM Students WHERE Name LIKE 'A%n';

SELECT * FROM Students WHERE AvgPoint<51 AND Age>=20;

SELECT * FROM Students