-- =====================================================
-- DBMS LAB SHEET 5
-- SQL JOINS
-- DBMS: MySQL
-- =====================================================

USE CollegeDB;


-- =====================================================
-- Q1. INNER JOIN between Student and Department
-- =====================================================

SELECT *
FROM Student
INNER JOIN Department
ON Student.Department_ID = Department.Department_ID;


-- =====================================================
-- Q2. Student names with department names
-- =====================================================

SELECT Student.Name,
       Department.Department_Name
FROM Student
INNER JOIN Department
ON Student.Department_ID = Department.Department_ID;


-- =====================================================
-- Q3. Employee names with department names
-- =====================================================

SELECT Employee.Emp_Name,
       Department.Department_Name
FROM Employee
INNER JOIN Department
ON Employee.Department_ID = Department.Department_ID;


-- =====================================================
-- Q4. Students with course details
-- =====================================================

SELECT Student.Name,
       Course.Course_Name
FROM Student
INNER JOIN Course
ON Student.Course_ID = Course.Course_ID;


-- =====================================================
-- Q5. Students belonging to a particular department
-- =====================================================

SELECT Student.Name,
       Department.Department_Name
FROM Student
INNER JOIN Department
ON Student.Department_ID = Department.Department_ID
WHERE Department.Department_Name = 'Computer Science';


-- =====================================================
-- Q6. LEFT OUTER JOIN
-- =====================================================

SELECT *
FROM Student
LEFT JOIN Department
ON Student.Department_ID = Department.Department_ID;


-- =====================================================
-- Q7. All students including those without department
-- =====================================================

SELECT Student.Name,
       Department.Department_Name
FROM Student
LEFT JOIN Department
ON Student.Department_ID = Department.Department_ID;


-- =====================================================
-- Q8. RIGHT OUTER JOIN
-- =====================================================

SELECT *
FROM Student
RIGHT JOIN Department
ON Student.Department_ID = Department.Department_ID;


-- =====================================================
-- Q9. All departments including departments having no students
-- =====================================================

SELECT Department.Department_Name,
       Student.Name
FROM Student
RIGHT JOIN Department
ON Student.Department_ID = Department.Department_ID;


-- =====================================================
-- Q10. Students not assigned to any department
-- =====================================================

SELECT Student.Name
FROM Student
LEFT JOIN Department
ON Student.Department_ID = Department.Department_ID
WHERE Department.Department_ID IS NULL;


-- =====================================================
-- Q11. Departments having no students
-- =====================================================

SELECT Department.Department_ID,
       Department.Department_Name
FROM Department
LEFT JOIN Student
ON Department.Department_ID = Student.Department_ID
WHERE Student.Student_ID IS NULL;


-- =====================================================
-- Q12. FULL OUTER JOIN concept
-- MySQL workaround using LEFT JOIN + RIGHT JOIN
-- =====================================================

SELECT Student.Name,
       Department.Department_Name
FROM Student
LEFT JOIN Department
ON Student.Department_ID = Department.Department_ID

UNION

SELECT Student.Name,
       Department.Department_Name
FROM Student
RIGHT JOIN Department
ON Student.Department_ID = Department.Department_ID;


-- =====================================================
-- Q13. CROSS JOIN between Student and Course
-- =====================================================

SELECT Student.Name,
       Course.Course_Name
FROM Student
CROSS JOIN Course;


-- =====================================================
-- Q14. Number of possible Student-Course combinations
-- =====================================================

SELECT COUNT(*) AS Possible_Combinations
FROM Student
CROSS JOIN Course;


-- =====================================================
-- Q15. NATURAL JOIN
-- =====================================================

SELECT *
FROM Student
NATURAL JOIN Department;


-- =====================================================
-- Q16. NATURAL JOIN vs INNER JOIN
-- =====================================================

-- NATURAL JOIN
SELECT *
FROM Student
NATURAL JOIN Department;

-- INNER JOIN
SELECT *
FROM Student
INNER JOIN Department
ON Student.Department_ID = Department.Department_ID;


-- =====================================================
-- Q17. SELF JOIN on Employee table
-- =====================================================

SELECT E.Emp_Name AS Employee,
       M.Emp_Name AS Manager
FROM Employee E
LEFT JOIN Employee M
ON E.Manager_ID = M.Emp_ID;


-- =====================================================
-- Q18. Employees along with their managers
-- =====================================================

SELECT E.Emp_Name AS Employee_Name,
       M.Emp_Name AS Manager_Name
FROM Employee E
LEFT JOIN Employee M
ON E.Manager_ID = M.Emp_ID;


-- =====================================================
-- Q19. Join Student, Department and Course
-- =====================================================

SELECT Student.Name,
       Department.Department_Name,
       Course.Course_Name
FROM Student
INNER JOIN Department
ON Student.Department_ID = Department.Department_ID
INNER JOIN Course
ON Student.Course_ID = Course.Course_ID;


-- =====================================================
-- Q20. Student name, course name and department name
-- =====================================================

SELECT Student.Name AS Student_Name,
       Course.Course_Name,
       Department.Department_Name
FROM Student
INNER JOIN Course
ON Student.Course_ID = Course.Course_ID
INNER JOIN Department
ON Student.Department_ID = Department.Department_ID;


-- =====================================================
-- Q21. Employees earning more than department average salary
-- =====================================================

SELECT E.Emp_Name,
       E.Salary,
       E.Department_ID
FROM Employee E
WHERE E.Salary >
(
    SELECT AVG(E2.Salary)
    FROM Employee E2
    WHERE E2.Department_ID = E.Department_ID
);


-- =====================================================
-- Q22. Department having maximum number of students
-- =====================================================

SELECT Department.Department_ID,
       Department.Department_Name,
       COUNT(Student.Student_ID) AS Total_Students
FROM Department
LEFT JOIN Student
ON Department.Department_ID = Student.Department_ID
GROUP BY Department.Department_ID,
         Department.Department_Name
ORDER BY Total_Students DESC
LIMIT 1;


-- =====================================================
-- Q23. Departments and total number of students
-- =====================================================

SELECT Department.Department_ID,
       Department.Department_Name,
       COUNT(Student.Student_ID) AS Total_Students
FROM Department
LEFT JOIN Student
ON Department.Department_ID = Student.Department_ID
GROUP BY Department.Department_ID,
         Department.Department_Name;


-- =====================================================
-- Q24. Courses and number of students enrolled
-- =====================================================

SELECT Course.Course_ID,
       Course.Course_Name,
       COUNT(Student.Student_ID) AS Total_Students
FROM Course
LEFT JOIN Student
ON Course.Course_ID = Student.Course_ID
GROUP BY Course.Course_ID,
         Course.Course_Name;


-- =====================================================
-- Q25. Complete Student-Department-Course Report
-- INNER JOIN + LEFT JOIN + GROUP BY + Aggregate
-- =====================================================

SELECT Department.Department_Name,
       Course.Course_Name,
       COUNT(Student.Student_ID) AS Total_Students
FROM Department
INNER JOIN Student
ON Department.Department_ID = Student.Department_ID
LEFT JOIN Course
ON Student.Course_ID = Course.Course_ID
GROUP BY Department.Department_Name,
         Course.Course_Name
ORDER BY Department.Department_Name,
         Course.Course_Name;
