--1. Employee salary information
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
INNER JOIN salaries
ON employees.emp_no = salaries.emp_no
ORDER BY employees.emp_no;

--2. Hired in 1986
SELECT first_name, last_name, hire_date 
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

--3. Manger information
SELECT dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
FROM dept_manager
INNER JOIN departments
ON (dept_manager.dept_no = departments.dept_no)
INNER JOIN employees
ON (dept_manager.emp_no = employees.emp_no);

--4. Employee Departments
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
INNER JOIN dept_emp
ON (employees.emp_no = dept_emp.emp_no)
INNER JOIN departments
ON (dept_emp.dept_no = departments.dept_no)
ORDER BY employees.emp_no;

--5. "Hercules B."
SELECT employees.first_name, employees.last_name, employees.sex
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

--6. "Sales Employees"
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
INNER JOIN dept_emp
ON (employees.emp_no = dept_emp.emp_no)
INNER JOIN departments
ON (dept_emp.dept_no = departments.dept_no)
WHERE dept_name = 'Sales'
ORDER BY employees.emp_no;

--7. "Sales and Dev Employees"
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
INNER JOIN dept_emp
ON (employees.emp_no = dept_emp.emp_no)
INNER JOIN departments
ON (dept_emp.dept_no = departments.dept_no)
WHERE dept_name IN ('Sales', 'Development')
ORDER BY employees.emp_no;

--8. Surname Frequency
SELECT employees.last_name, count(employees.last_name)
FROM employees GROUP BY last_name
ORDER BY count(employees.last_name) DESC;




