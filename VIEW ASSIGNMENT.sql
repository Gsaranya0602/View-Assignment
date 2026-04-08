use assignment1;
select* from employee_details;

/*Create a View for employee table to get the salary if it is <10000 mark it as 'LOW' otherwise 
'MODERATE' in separate column 'Sal_Status'. So the result of view should display the following
 details like EmpID,EmpName,Department,Salary,Sal_Status.*/
 
 
 #--CREATE TABLE---
 CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
   Department VARCHAR(50),
    Salary INT
);

#----INSERT RECORDS---
INSERT INTO employee VALUES
(101, 'Arun', 'HR', 8000),
(102, 'Priya', 'IT', 12000),
(103, 'Karthik', 'Finance', 19000),
(104, 'Divya', 'IT', 15000),
(105, 'Ravi', 'Sales', 7000),
(106, 'Meena', 'HR', 11000),
(107, 'Suresh', 'Finance', 6000),
(108, 'Anitha', 'IT', 20000),
(109, 'Vijay', 'Sales', 14000),
(110, 'Lakshmi', 'HR', 13000);
 
 
#---CREATE VIEW--
 create view employee_table_view as
 select emp_id as EmpID,emp_name as EmpName,Department,Salary ,
 if(Salary<10000,'LOW','MODERATE') as Sal_status
 from employee;

#--SELECT VIEW--
 select *from employee_table_view;