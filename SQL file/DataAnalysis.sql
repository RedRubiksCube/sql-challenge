-- Question 1
--List the following details of each employee:
--employee number, last name, first name, sex, and salary.
SELECT employee.emp_no, employee.last_name, employee.first_name, employee.sex, salary.salary
FROM employees employee
JOIN salaries salary on employee.emp_no = salary.emp_no
 

-- Question 2
SELECT employee.first_name, employee.last_name, employee.hire_date
FROM employees employee
WHERE hire_date > '1985-12-31' AND hire_date < '1987-01-01';	


-- Question 3
--List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name.

SELECT dept.dept_no, dept.dept_name, employee.emp_no, employee.first_name, employee.last_name
FROM employees employee
JOIN dept_manager dept_m ON dept_m.emp_no = employee.emp_no
JOIN departments dept ON dept.dept_no = dept_m.depo_no
order by employee.last_name


-- Question 4
-- List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.


-- Question 6
-- List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT employee.emp_no, employee.last_name, employee.first_name, department.dept_name
FROM employees employee
JOIN dept_emp dep ON dep.emp_no = employee.emp_no
JOIN departments department ON department.dept_no = dep.dept_no
WHERE department.dept_name = 'Sales'

