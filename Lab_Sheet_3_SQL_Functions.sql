-- =====================================================
-- DBMS LAB SHEET 3
-- SQL FUNCTIONS
-- DBMS: MySQL
-- =====================================================

USE CollegeDB;

-- =====================================================
-- A. NUMBER FUNCTIONS
-- =====================================================

-- Q1. Demonstrate ABS()
SELECT ABS(-25) AS Absolute_Value;

-- Q2. Demonstrate ROUND()
SELECT ROUND(125.6789, 2) AS Rounded_Value;

-- Q3. Demonstrate CEIL() and FLOOR()
SELECT CEIL(12.34) AS Ceiling_Value,
       FLOOR(12.34) AS Floor_Value;

-- Q4. Demonstrate MOD()
SELECT MOD(17, 5) AS Remainder;

-- Q5. Calculate rounded salary of employees
SELECT Emp_ID, Emp_Name, ROUND(Salary, 0) AS Rounded_Salary
FROM Employee;


-- =====================================================
-- B. AGGREGATE FUNCTIONS
-- =====================================================

-- Q6. Total number of students using COUNT()
SELECT COUNT(*) AS Total_Students
FROM Student;

-- Q7. Total salary using SUM()
SELECT SUM(Salary) AS Total_Salary
FROM Employee;

-- Q8. Average salary using AVG()
SELECT AVG(Salary) AS Average_Salary
FROM Employee;

-- Q9. Highest salary using MAX()
SELECT MAX(Salary) AS Highest_Salary
FROM Employee;

-- Q10. Lowest salary using MIN()
SELECT MIN(Salary) AS Lowest_Salary
FROM Employee;


-- =====================================================
-- C. CHARACTER FUNCTIONS
-- =====================================================

-- Q11. UPPER() on student names
SELECT Name, UPPER(Name) AS Upper_Name
FROM Student;

-- Q12. LOWER() on student names
SELECT Name, LOWER(Name) AS Lower_Name
FROM Student;

-- Q13. LENGTH() on student names
SELECT Name, LENGTH(Name) AS Name_Length
FROM Student;

-- Q14. CONCAT() using first and last names
SELECT CONCAT(Name, ' - ', City) AS Student_Details
FROM Student;

-- Q15. SUBSTRING() with suitable example
SELECT Name, SUBSTRING(Name, 1, 3) AS Short_Name
FROM Student;


-- =====================================================
-- D. CONVERSION FUNCTIONS
-- =====================================================

-- Q16. Convert number into character/string
SELECT CAST(12345 AS CHAR) AS Number_As_String;

-- Q17. Convert string into numeric value
SELECT CAST('5000' AS UNSIGNED) AS String_As_Number;

-- Q18. Convert date into different format
SELECT DATE_FORMAT('2026-10-07', '%d-%m-%Y') AS Formatted_Date;

-- Q19. Demonstrate CAST()
SELECT CAST(125.75 AS SIGNED) AS Converted_Number;

-- Q20. Demonstrate CONVERT()
SELECT CONVERT('12345', UNSIGNED) AS Converted_Value;


-- =====================================================
-- E. DATE FUNCTIONS
-- =====================================================

-- Q21. Display current date
SELECT CURDATE() AS Current_Date;

-- Q22. Extract year, month and day
SELECT
    YEAR('2026-10-07') AS Year_Value,
    MONTH('2026-10-07') AS Month_Value,
    DAY('2026-10-07') AS Day_Value;

-- Q23. Find difference between two dates
SELECT DATEDIFF('2026-12-31', '2026-10-07') AS Date_Difference;

-- Q24. Add specified number of days to a date
SELECT DATE_ADD('2026-10-07', INTERVAL 10 DAY) AS New_Date;

-- Q25. Display employees' joining dates in required format
-- Demonstration with a joining date value
SELECT
    Emp_ID,
    Emp_Name,
    DATE_FORMAT('2026-01-15', '%d-%m-%Y') AS Joining_Date
FROM Employee;
