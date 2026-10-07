-- =====================================================
-- DBMS LAB SHEET 1
-- DDL COMMANDS: CREATE, ALTER AND DROP
-- Database: CollegeDB
-- =====================================================


-- Q1. Create a database named CollegeDB
CREATE DATABASE CollegeDB;

USE CollegeDB;


-- Q2. Create Student table
CREATE TABLE Student (
    Student_ID INT,
    Name VARCHAR(50),
    Age INT,
    Course VARCHAR(50),
    City VARCHAR(50)
);


-- Q3. Create Employee table
CREATE TABLE Employee (
    Emp_ID INT,
    Emp_Name VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10,2)
);


-- Q4. Create Department table
CREATE TABLE Department (
    Dept_ID INT,
    Dept_Name VARCHAR(50),
    Location VARCHAR(50)
);


-- Q5. Create Product table
CREATE TABLE Product (
    Product_ID INT,
    Product_Name VARCHAR(100),
    Price DECIMAL(10,2),
    Quantity INT
);


-- Q6. Create Customer table
CREATE TABLE Customer (
    Customer_ID INT,
    Customer_Name VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(15)
);


-- Q7. Create Course table
CREATE TABLE Course (
    Course_ID INT,
    Course_Name VARCHAR(100),
    Duration VARCHAR(30),
    Fees DECIMAL(10,2)
);


-- Q8. Create Faculty table
CREATE TABLE Faculty (
    Faculty_ID INT,
    Faculty_Name VARCHAR(50),
    Subject VARCHAR(50),
    Salary DECIMAL(10,2)
);


-- Q9. Create Library table
CREATE TABLE Library (
    Book_ID INT,
    Book_Name VARCHAR(100),
    Author VARCHAR(50),
    Price DECIMAL(10,2)
);


-- Q10. Create Department table with Dept_ID as Primary Key
-- Demonstration using a separate table
CREATE TABLE Department_PK (
    Dept_ID INT PRIMARY KEY,
    Dept_Name VARCHAR(50),
    Location VARCHAR(50)
);


-- Q11. Create Student table with Student_ID Primary Key
-- and Name as NOT NULL
CREATE TABLE Student_PK (
    Student_ID INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Age INT,
    Course VARCHAR(50),
    City VARCHAR(50)
);


-- Q12. Create Employee table with UNIQUE constraint on Email
CREATE TABLE Employee_Unique (
    Emp_ID INT,
    Emp_Name VARCHAR(50),
    Email VARCHAR(100) UNIQUE,
    Department VARCHAR(50),
    Salary DECIMAL(10,2)
);


-- Q13. Create Product table with CHECK constraint
-- Price must be greater than 0
CREATE TABLE Product_Check (
    Product_ID INT,
    Product_Name VARCHAR(100),
    Price DECIMAL(10,2) CHECK (Price > 0),
    Quantity INT
);


-- Q14. Add Email column to Student table
ALTER TABLE Student
ADD Email VARCHAR(100);


-- Q15. Add Phone column to Student table
ALTER TABLE Student
ADD Phone VARCHAR(15);


-- Q16. Modify the size of Name column
ALTER TABLE Student
MODIFY Name VARCHAR(100);


-- Q17. Rename Student table to Student_Details
ALTER TABLE Student
RENAME TO Student_Details;


-- Q18. Rename City column to Address
ALTER TABLE Student_Details
RENAME COLUMN City TO Address;


-- Q19. Add Salary column to Employee table
-- Employee already has Salary, so create a demonstration table
CREATE TABLE Employee_Alter (
    Emp_ID INT,
    Emp_Name VARCHAR(50),
    Department VARCHAR(50)
);

ALTER TABLE Employee_Alter
ADD Salary DECIMAL(10,2);


-- Q20. Drop Phone column from Student table
ALTER TABLE Student_Details
DROP COLUMN Phone;


-- Q21. Drop Email column from Student table
ALTER TABLE Student_Details
DROP COLUMN Email;


-- Q22. Remove all records using TRUNCATE
TRUNCATE TABLE Student_Details;


-- Q23. Drop Course table
DROP TABLE Course;


-- Q24. Drop Customer table
DROP TABLE Customer;


-- Q25. Complete Student table with
-- PRIMARY KEY, NOT NULL, UNIQUE and CHECK constraints

CREATE TABLE Student_Complete (
    Student_ID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Age INT CHECK (Age >= 18),
    Course VARCHAR(50),
    City VARCHAR(50)
);


-- Insert sample records
INSERT INTO Student_Complete
(Student_ID, Name, Email, Age, Course, City)
VALUES
(101, 'Rahul', 'rahul@gmail.com', 20, 'B.Tech', 'Deoband'),
(102, 'Aman', 'aman@gmail.com', 21, 'BCA', 'Saharanpur');


-- Demonstrate ALTER operation
ALTER TABLE Student_Complete
ADD Phone VARCHAR(15);


-- Demonstrate DROP operation
ALTER TABLE Student_Complete
DROP COLUMN Phone;


-- Display final Student table structure
DESC Student_Complete;