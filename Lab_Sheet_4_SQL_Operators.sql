-- =====================================================
-- DBMS LAB SHEET 4
-- SQL OPERATORS
-- DBMS: MySQL
-- =====================================================

USE CollegeDB;

-- ==============================
-- A. ARITHMETIC OPERATORS
-- ==============================

-- Q1. Addition
SELECT 10 + 5 AS Addition_Result;

-- Q2. Subtraction
SELECT 20 - 8 AS Subtraction_Result;

-- Q3. Multiplication
SELECT 10 * 5 AS Multiplication_Result;

-- Q4. Division
SELECT 20 / 4 AS Division_Result;

-- Q5. Calculate Total Amount = Price × Quantity
SELECT Product_ID, Product_Name, Price, Quantity,
       Price * Quantity AS Total_Amount
FROM Product;


-- ==============================
-- B. LOGICAL OPERATORS
-- ==============================

-- Q6. AND operator
SELECT *
FROM Student
WHERE Age >= 18 AND City = 'Delhi';

-- Q7. OR operator
SELECT *
FROM Student
WHERE City = 'Delhi' OR City = 'Meerut';

-- Q8. NOT operator
SELECT *
FROM Student
WHERE NOT City = 'Delhi';

-- Q9. Students belonging to a specific course AND city
SELECT *
FROM Student
WHERE Course = 'B.Tech' AND City = 'Delhi';

-- Q10. Employees belonging to either of two departments
SELECT *
FROM Employee
WHERE Department = 'IT' OR Department = 'HR';


-- ==============================
-- C. COMPARISON OPERATORS
-- ==============================

-- Q11. Equal (=)
SELECT *
FROM Student
WHERE City = 'Delhi';

-- Q12. Greater than (>)
SELECT *
FROM Employee
WHERE Salary > 40000;

-- Q13. Less than (<)
SELECT *
FROM Product
WHERE Price < 1000;

-- Q14. Greater than or equal (>=) and Less than or equal (<=)
SELECT *
FROM Employee
WHERE Salary >= 30000 AND Salary <= 60000;

-- Q15. Not equal (<> / !=)
SELECT *
FROM Student
WHERE City <> 'Delhi';


-- ==============================
-- D. SPECIAL OPERATORS
-- ==============================

-- Q16. BETWEEN operator
SELECT *
FROM Employee
WHERE Salary BETWEEN 30000 AND 60000;

-- Q17. IN operator
SELECT *
FROM Student
WHERE City IN ('Delhi', 'Meerut', 'Noida');

-- Q18. NOT IN operator
SELECT *
FROM Student
WHERE City NOT IN ('Delhi', 'Meerut');

-- Q19. LIKE operator
-- Names beginning with letter A
SELECT *
FROM Student
WHERE Name LIKE 'A%';

-- Q20. IS NULL and IS NOT NULL
SELECT *
FROM Student
WHERE City IS NULL;

SELECT *
FROM Student
WHERE City IS NOT NULL;


-- ==============================
-- E. SET OPERATIONS
-- ==============================

-- Q21. UNION
SELECT Name AS Person_Name
FROM Student
UNION
SELECT Emp_Name
FROM Employee;

-- Q22. UNION ALL
SELECT Name AS Person_Name
FROM Student
UNION ALL
SELECT Emp_Name
FROM Employee;

-- Q23. INTERSECT
-- Supported in MySQL 8.0.31+
SELECT Name AS Person_Name
FROM Student
INTERSECT
SELECT Emp_Name
FROM Employee;

-- Q24. EXCEPT
-- Supported in MySQL 8.0.31+
SELECT Name AS Person_Name
FROM Student
EXCEPT
SELECT Emp_Name
FROM Employee;


-- ==============================
-- F. MULTIPLE OPERATORS
-- ==============================

-- Q25. Arithmetic + Logical + Comparison + Special Operators
SELECT Product_ID,
       Product_Name,
       Price,
       Quantity,
       Price * Quantity AS Total_Amount
FROM Product
WHERE Price > 1000
  AND Quantity BETWEEN 5 AND 20
  AND Product_Name LIKE 'L%'
  AND Product_ID IN (301, 302, 303);

