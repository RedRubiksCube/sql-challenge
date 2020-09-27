-- Question 1
--List the following details of each employee:
--employee number, last name, first name, sex, and salary.
select employee.emp_no, employee.last_name, employee.first_name, employee.sex, salary.salary
from employees employee
join salaries salary on employee.emp_no = salary.emp_no
 

-- Question 2
select employee.first_name, employee.last_name, employee.hire_date
FROM employees employee
WHERE employee.hire_date = '1986'


-- Question 6
-- List all employees in the Sales department, including their employee number, last name, first name, and department name.
select employee.emp_no, employee.last_name, employee.first_name, department.dept_name
FROM employees employee
JOIN dept_emp dep ON dep.emp_no = employee.emp_no
JOIN departments department ON department.dept_no = dep.dept_no
WHERE department.dept_name = 'Sales'

