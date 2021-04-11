-- 1. List the following details of each employee:
-- employee number, last name, first name, sex, and salary.
SELECT
  e.id as employee_id,
  e.last_name,
  e.first_name,
  e.sex,
  s.salary
FROM employees as e
JOIN salaries as s
ON e.id = s.emp_id;


-- 2. List first name, last name, and hire date
-- for employees who were hired in 1986.
SELECT
  first_name,
  last_name,
  hire_date
FROM employees
WHERE EXTRACT(year FROM hire_date) = '1986'
ORDER BY hire_date, last_name, first_name;

-- 3. List the manager of each department with the following information:
-- department number, department name, the manager's employee number, last name, first name.
SELECT
  d.id as "department_id",
  d.dept as "department",
  e.id as "employee_id",
  e.last_name,
  e.first_name
FROM employees as e
JOIN dept_manager as dm ON e.id = dm.emp_id
JOIN departments as d ON dm.dept_id = d.id
ORDER BY d.id; 

-- 4. List the department of each employee with the following information:
-- employee number, last name, first name, and department name.
SELECT
  e.id as "employee_id",
  e.last_name,
  e.first_name,
  d.dept as "department"
FROM employees as e
JOIN dept_emp as de ON e.id = de.emp_id
JOIN departments as d ON de.dept_id = d.id
ORDER BY e.id;

-- 5. List first name, last name, and sex for employees
-- whose first name is "Hercules" and last names begin with "B."
SELECT
  first_name,
  last_name,
  sex
FROM employees
WHERE
  first_name = 'Hercules'
and
  last_name LIKE 'B%'
ORDER BY last_name;

-- 6. List all employees in the Sales department, including their
-- employee number, last name, first name, and department name.
SELECT
  e.id as "employee_id",
  e.last_name,
  e.first_name,
  d.dept as "department"
FROM employees as e
JOIN dept_emp as de ON e.id = de.emp_id
JOIN departments as d ON de.dept_id = d.id
WHERE d.dept = 'Sales'
ORDER BY e.last_name;

-- 7. List all employees in the Sales and Development departments
-- including their employee number, last name, first name, and department name.
SELECT
  e.id as "employee_id",
  e.last_name,
  e.first_name,
  d.dept as "department"
FROM employees as e
JOIN dept_emp as de ON e.id = de.emp_id
JOIN departments as d ON de.dept_id = d.id
WHERE d.dept IN ('Sales', 'Development')
ORDER BY e.last_name;

-- 8. In descending order, list the frequency count of employee last names,
-- i.e., how many employees share each last name.
SELECT
  last_name,
  COUNT(*) as "frequency"
FROM employees
GROUP BY last_name
ORDER BY frequency DESC;