SELECT * FROM departments;

SELECT * FROM titles;

SELECT * FROM employees;

SELECT * FROM dept_emp;

SELECT * FROM dept_manager;

SELECT * FROM salaries;

-- List the following details of each: employee: employee number, last name, first name, sex, and salary

SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees AS e
LEFT JOIN salaries AS s ON e.emp_no = s.emp_no;

-- List first name, last name, and hire date for employees who were hired in 1986

SELECT e.first_name, e.last_name, e.hire_date
FROM employees AS e
WHERE EXTRACT(YEAR FROM e.hire_date) = 1986;

-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name

SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM dept_manager AS dm
LEFT JOIN employees AS e ON dm.emp_no = e.emp_no
LEFT JOIN departments AS d ON dm.dept_no = d.dept_no;

-- List the department of each employee with the following information: employee number, last name, first name, and department name.

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
LEFT JOIN dept_emp AS de ON e.emp_no = de.emp_no
LEFT JOIN departments AS d ON de.dept_no = d.dept_no;


-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B"

SELECT e.first_name, e.last_name, e.sex
FROM employees AS e
WHERE e.first_name = 'Hercules' AND e.last_name LIKE 'B%';

-- List all employees in the Sales department, including their employee number, last name, first name, and department name

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
LEFT JOIN dept_emp AS de ON e.emp_no = de.emp_no
LEFT JOIN departments AS d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';

-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
LEFT JOIN dept_emp AS de ON e.emp_no = de.emp_no
LEFT JOIN departments AS d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';

-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name

SELECT e.last_name, COUNT(e.last_name) as Count
FROM employees AS e
GROUP BY e.last_name
ORDER BY Count DESC;