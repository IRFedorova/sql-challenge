-- List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT emp.emp_no,
	emp.last_name,
	emp.first_name,
	emp.sex,
	sal.salary
FROM employees as emp
	LEFT JOIN salaries as sal
	ON (emp.emp_no = sal.emp_no)
ORDER BY emp.last_name;

--2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT emp.first_name, 
	emp.last_name,
	emp.hire_date
FROM employees as emp
WHERE emp.hire_date BETWEEN '1985-01-01' AND '1986-12-31';

-- 3. List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, last name, first name
SELECT d.dept_no,
	d.dept_name,
	dm.emp_no,
	e.last_name,
	e.first_name
FROM dept_manager AS dm
	INNER JOIN departments AS d
	on (dm.dept_no = d.dept_no)
	INNER JOIN employees AS e
	ON (dm.emp_no = e.emp_no);

-- 4. List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.
SELECT e.emp_no,
	last_name,
	first_name
	dept_no
FROM employees AS e
	INNER JOIN dept_emp AS de
		ON (e.emp_no = de.emp_no)
	INNER JOIN departments as d
		ON (de.dept_no = d.dept_no)
ORDER BY e.emp_no;

-- 5. List first name, last name, and sex for employees whose first name is "Hercules" 
-- and last names begin with "B."
SELECT e.first_name,
	e.last_name,
	e.sex
FROM employees AS e
WHERE e.first_name = 'Hercules'
	AND e.last_name LIKE 'B%';

-- 6. List all employees in the Sales department, 
-- including their employee number, last name, first name, and department name.
SELECT e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
FROM employees AS e
	INNER JOIN dept_emp AS de
		ON (e.emp_no = de.emp_no)
	INNER JOIN departments AS d
		ON (de.dept_no = d.dept_no)
WHERE d.dept_name = 'Sales'
ORDER BY e.emp_no;

-- 7.List all employees in the Sales and Development departments, 
-- including their employee number, last name, first name, and department name.
SELECT e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
FROM employees AS e
	INNER JOIN dept_emp AS de
		ON (e.emp_no = de.emp_no)
	INNER JOIN departments as d
		ON (de.dept_no = d.dept_no)
WHERE d.dept_name = 'Sales'
ORDER by emp_no;

--8. In descending order, list the frequency count of employee last names, 
-- i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY COUNT (last_name);



	

