
-- d. Show all female students
SELECT * FROM ComputerScienceBatches WHERE S_GENDER = 'Female';

-- e. Show students in 'physics', age 21, and address 'Islamabad'
SELECT * FROM ComputerScienceBatches WHERE S_DISCIPLINE = 'Physics' AND S_AGE = 21 AND S_ADDRESS = 'Islamabad';

-- f. Show complete addresses of students from 'Lahore'
SELECT S_ADDRESS FROM ComputerScienceBatches WHERE S_ADDRESS LIKE '%Lahore%';

-- g. Check for repetitive S_ID
SELECT S_ID, COUNT(S_ID) FROM ComputerScienceBatches GROUP BY S_ID HAVING COUNT(S_ID) > 1;

-- h. Show all students in the 4th semester
SELECT * FROM ComputerScienceBatches WHERE S_SEM = 4;

-- i. List of students with CGPA of 3.67
SELECT * FROM ComputerScienceBatches WHERE S_CGPA = 3.67;

-- j. Find students with CGPA between 2.75 and 3.32
SELECT * FROM ComputerScienceBatches WHERE S_CGPA BETWEEN 2.75 AND 3.32;

-- k. Check for student named Adeel, age 17, from Sargodha with CGPA 3.94
SELECT * FROM ComputerScienceBatches WHERE S_NAME = 'Adeel' AND S_AGE = 17 AND S_ADDRESS = 'Sargodha' AND S_CGPA = 3.94;

-- Task 2: Create a Table for Computer Science Faculty


-- Queries for Scenarios
-- a. Find faculty members of Computer Science
SELECT * FROM ComputerScienceFaculty WHERE F_SCHOOL = 'Engineering';

-- b. Find faculty members of Creative Technologies
SELECT * FROM ComputerScienceFaculty WHERE F_SCHOOL = 'Arts';

-- c. Find faculty members who joined in 2020
SELECT * FROM ComputerScienceFaculty WHERE YEAR(F_JOINING_DATE) = 2020;

-- d. Find qualification of faculty joined on '1-nov-1999'
SELECT F_QUALIFICATION FROM ComputerScienceFaculty WHERE F_JOINING_DATE = '1999-11-01';

-- e. Find the faculty member who joined last
SELECT TOP 1 * FROM ComputerScienceFaculty ORDER BY F_JOINING_DATE DESC;

-- f. Find faculty members of CS and CT
SELECT * FROM ComputerScienceFaculty WHERE F_COURSES LIKE '%CS%' OR F_COURSES LIKE '%CT%';

-- g. Count how many teachers are teaching 'CS-220'
SELECT COUNT(*) FROM ComputerScienceFaculty WHERE F_COURSES LIKE '%CS-220%';