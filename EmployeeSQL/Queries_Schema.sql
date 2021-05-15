--List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees as e
INNER JOIN salaries as s on e.emp_no = s.emp_no;

--List first name, last name, and hire date for employees who were hired in 1986.
SELECT e.first_name, e.last_name, e.hire_date 
FROM employees as e
WHERE e.hire_date like '%1986';

--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM dept_managers as dm
INNER JOIN departments as d on
dm.dept_no = d.dept_no
INNER JOIN employees as e on
dm.emp_no = e.emp_no;

--List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees as e 
INNER JOIN dept_emp as de on
de.emp_no = e.emp_no
INNER JOIN departments as d on 
d.dept_no = de.dept_no;

--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT e.first_name, e.last_name, e.sex
FROM employees as e
WHERE e.first_name = 'Hercules'
AND e.last_name like 'B%';

--List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees as e 
INNER JOIN dept_emp as de on
de.emp_no = e.emp_no
INNER JOIN departments as d on 
d.dept_no = de.dept_no
WHERE dept_name = 'Sales';

--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees as e 
INNER JOIN dept_emp as de on
de.emp_no = e.emp_no
INNER JOIN departments as d on 
d.dept_no = de.dept_no
WHERE dept_name = 'Sales' OR
dept_name = 'Development';

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name) as "COUNTER" FROM employees
GROUP BY last_name
ORDER BY "COUNTER" DESC;
