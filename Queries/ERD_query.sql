Departments
-
dept_no varchar pk fk - Dept_Emp.dept_no
dept_name varchar pk 

Employees
-
emp_no int pk fk -< Dept_Emp.emp_no fk -< Titles.emp_no
birth_date date
first_name varchar
last_name varchar
gender varchar
hire_date date

Dept_Emp
-
emp_no int pk
dept_no varchar pk
from_date date
to_date date

Managers
-
dept_no varchar pk fk - Departments.dept_no
emp_no int pk fk - Employees.emp_no
from_date date
to_date date

Salaries
-
emp_no int pk fk -< Employees.emp_no fk -< Dept_Emp.emp_no fk -< Titles.emp_no  fk -< Managers.emp_no 
salary int
from_date date
to_date date

Titles
-
emp_no int pk
title varchar
from_date date
to_date date