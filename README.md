
# SQL Challenge


## Schema
[schema.sql](EmployeeSQL/schema.sql) creates tables to hold data about a company's employees from the 6 csv files in [EmployeeSQL/data/](EmployeeSQL/data).

![Pewlett-Hackard ERD](EmployeeSQL/images/erd.png)

## Queries

[queries.sql](EmployeeSQL/queries.sql) contains PostgreSQL queries for the following questions:
1. List the following details of each employee: employee number, last name, first name, sex, and salary.

2. List first name, last name, and hire date for employees who were hired in 1986.

3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

4. List the department of each employee with the following information: employee number, last name, first name, and department name.

5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.new PostGres

## Visualizations

[pewlett-hackard.ipynb](EmployeeSQL/pewlett-hackard.ipynb) contains a script to connect to the Postgres database using [Psycopg](https://www.psycopg.org/) and create dataframes and plots from sql queries.

!['histogram of salary ranges'](EmployeeSQL/images/salaries_hist.png)

!['average salary by title'](EmployeeSQL/images/average_salaries.png)