-- =====================================================
-- DBMS LAB SHEET 2
-- DML COMMANDS: INSERT, UPDATE AND DELETE
-- =====================================================

-- Q1. Insert one record into Student table
INSERT INTO Student
(Student_ID, Name, Age, Course, City)
VALUES
(101, 'Rahul', 20, 'B.Tech', 'Deoband');


-- Q2. Insert five student records using separate INSERT statements
INSERT INTO Student VALUES (102, 'Aman', 21, 'BCA', 'Delhi');
INSERT INTO Student VALUES (103, 'Rohit', 20, 'B.Tech', 'Meerut');
INSERT INTO Student VALUES (104, 'Vikas', 22, 'BCA', 'Delhi');
INSERT INTO Student VALUES (105, 'Arjun', 21, 'B.Tech', 'Meerut');
INSERT INTO Student VALUES (106, 'Karan', 20, 'MCA', 'Saharanpur');


-- Q3. Insert multiple records using a single statement
INSERT INTO Student
(Student_ID, Name, Age, Course, City)
VALUES
(107, 'Amit', 21, 'B.Tech', 'Delhi'),
(108, 'Sumit', 22, 'BCA', 'Meerut'),
(109, 'Neeraj', 20, 'MCA', 'Deoband');


-- Q4. Insert records into Employee table
INSERT INTO Employee
(Emp_ID, Emp_Name, Department, Salary)
VALUES
(201, 'Raj', 'IT', 40000),
(202, 'Amit', 'HR', 35000),
(203, 'Vijay', 'Finance', 45000);


-- Q5. Insert records into Department table
INSERT INTO Department
(Dept_ID, Dept_Name, Location)
VALUES
(1, 'IT', 'Delhi'),
(2, 'HR', 'Meerut'),
(3, 'Finance', 'Noida');


-- Q6. Insert records into Product table
INSERT INTO Product
(Product_ID, Product_Name, Price, Quantity)
VALUES
(301, 'Laptop', 55000, 10),
(302, 'Mouse', 500, 25),
(303, 'Keyboard', 1000, 15);


-- Q7. Insert records into Customer table
INSERT INTO Customer
(Customer_ID, Customer_Name, Email, Phone)
VALUES
(401, 'Rahul', 'rahul@gmail.com', '9876543210'),
(402, 'Aman', 'aman@gmail.com', '9876543211');


-- Q8. Insert records into Course table
INSERT INTO Course
(Course_ID, Course_Name, Duration, Fees)
VALUES
(501, 'B.Tech', '4 Years', 120000),
(502, 'BCA', '3 Years', 90000),
(503, 'MCA', '2 Years', 100000);


-- Q9. Insert student record with values for all columns
INSERT INTO Student
(Student_ID, Name, Age, Course, City)
VALUES
(110, 'Mohit', 21, 'B.Tech', 'Delhi');


-- Q10. Insert student record using selected columns
INSERT INTO Student
(Student_ID, Name, Course)
VALUES
(111, 'Sahil', 'BCA');


-- Q11. Update city of a particular student
UPDATE Student
SET City = 'Delhi'
WHERE Student_ID = 101;


-- Q12. Update salary of a particular employee
UPDATE Employee
SET Salary = 50000
WHERE Emp_ID = 201;


-- Q13. Increase salary of all employees by 10%
UPDATE Employee
SET Salary = Salary * 1.10;


-- Q14. Increase price of all products by 5%
UPDATE Product
SET Price = Price * 1.05;


-- Q15. Change course of a particular student
UPDATE Student
SET Course = 'MCA'
WHERE Student_ID = 102;


-- Q16. Update department of an employee
UPDATE Employee
SET Department = 'IT'
WHERE Emp_ID = 202;


-- Q17. Update city of all students from Meerut to Delhi
UPDATE Student
SET City = 'Delhi'
WHERE City = 'Meerut';


-- Q18. Update fees of a particular course
UPDATE Course
SET Fees = 110000
WHERE Course_ID = 503;


-- Q19. Update multiple columns of a student simultaneously
UPDATE Student
SET Age = 22,
    Course = 'B.Tech',
    City = 'Noida'
WHERE Student_ID = 103;


-- Q20. Delete a particular student using Student_ID
DELETE FROM Student
WHERE Student_ID = 111;


-- Q21. Delete all students belonging to a particular city
DELETE FROM Student
WHERE City = 'Deoband';


-- Q22. Delete employees whose salary is below a specified amount
DELETE FROM Employee
WHERE Salary < 40000;


-- Q23. Delete products whose quantity is zero
DELETE FROM Product
WHERE Quantity = 0;


-- Q24. Delete records using multiple conditions
DELETE FROM Student
WHERE Age > 21 AND City = 'Delhi';


-- Q25. Complete sequence of INSERT, UPDATE and DELETE
-- Insert
INSERT INTO Student
(Student_ID, Name, Age, Course, City)
VALUES
(120, 'Test Student', 20, 'B.Tech', 'Delhi');

SELECT * FROM Student
WHERE Student_ID = 120;


-- Update
UPDATE Student
SET City = 'Noida', Course = 'MCA'
WHERE Student_ID = 120;

SELECT * FROM Student
WHERE Student_ID = 120;


-- Delete
DELETE FROM Student
WHERE Student_ID = 120;

SELECT * FROM Student;