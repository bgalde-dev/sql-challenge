-- Queries as described for the project

-- List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT employees.emp_no AS "employee number", 
    employees.last_name AS "last name", 
    employees.first_name AS "first name", 
    employees.sex AS "sex", 
    salaries.salary AS "salary" FROM employees
INNER JOIN salaries ON employees.emp_no = salaries.emp_no;


-- List first name, last name, and hire date for employees who were hired in 1986.
SELECT employees.first_name AS "first name", 
	employees.last_name AS "last name",     
    employees.hire_date AS "hire date"
FROM employees
WHERE date_part('year',employees.hire_date) = 1986;

-- List the manager of each department with the following information: department number, 
-- department name, the manager's employee number, last name, first name.
SELECT 
	dep_manager.dept_no AS "Department Number",
	departments.dept_name AS "Department Name",
	employees.emp_no AS "employee number", 
    employees.last_name AS "last name", 
    employees.first_name AS "first name" 
    FROM employees
INNER JOIN dep_manager ON dep_manager.emp_no = employees.emp_no
INNER JOIN departments ON departments.dept_no = dep_manager.dept_no;

-- List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.
SELECT 
	employees.emp_no AS "employee number", 
    employees.last_name AS "last name", 
    employees.first_name AS "first name",
	departments.dept_name AS "Department Name"
FROM employees
INNER JOIN dep_emp ON dep_emp.emp_no = employees.emp_no
INNER JOIN departments ON departments.dept_no = dep_emp.dept_no;

-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT 
    employees.first_name AS "first name",
    employees.last_name AS "last name", 
	employees.sex AS "sex"
FROM employees
WHERE employees.first_name = 'Hercules' AND employees.last_name LIKE 'B%';

-- List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT 
	employees.emp_no AS "employee number", 
    employees.last_name AS "last name", 
    employees.first_name AS "first name",
	departments.dept_name AS "Department Name"
FROM employees
INNER JOIN dep_emp ON dep_emp.emp_no = employees.emp_no
INNER JOIN departments ON departments.dept_no = dep_emp.dept_no
WHERE departments.dept_name = 'Sales';

-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT 
	employees.emp_no AS "employee number", 
    employees.last_name AS "last name", 
    employees.first_name AS "first name",
	departments.dept_name AS "Department Name"
FROM employees
INNER JOIN dep_emp ON dep_emp.emp_no = employees.emp_no
INNER JOIN departments ON departments.dept_no = dep_emp.dept_no
WHERE departments.dept_name = 'Sales' OR departments.dept_name = 'Development';

-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT 
	employees.last_name AS "last name", 
    COUNT(employees.last_name) AS "Number with Last Name"
FROM employees
GROUP BY employees.last_name
ORDER BY COUNT(employees.last_name) DESC;
