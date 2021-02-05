


-- Create tables
CREATE TABLE employees(
	emp_no INT NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	gender VARCHAR NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no))

CREATE TABLE dept_manager(
	dept_no VARCHAR(4) NOT NULL,
	emp_no INT NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	PRIMARY KEY (emp_no, dept_no))

-- Filter tables

SELECT * FROM salaries
WHERE to_date > '1990-02-10'
ORDER BY to_date DESC

SELECT COUNT(salaries) FROM salaries
WHERE to_date > '1989-12-31'
AND salary > 40000

SELECT * FROM salaries
WHERE to_date>'2020-06-26'

-- Print Tables

SELECT * FROM salaries
SELECT * FROM departments
SELECT * FROM employees
SELECT * FROM dept_manager


-- Combine Tables
SELECT departments.dept_no, departments.dept_name , dept_manager.dept_no, dept_manager.emp_no, salaries.emp_no, salaries.salary
FROM departments, dept_manager, salaries



-- Union
SELECT emp_no 
FROM employees
UNION
SELECT emp_no
FROM salaries



rollback;
commit;



-- Join
SELECT salaries.emp_no, salaries.salary, salaries.from_date, employees.first_name, employees.last_name
FROM salaries
LEFT JOIN employees
ON
    salaries.emp_no = employees.emp_no

--JOIN
SELECT * FROM salaries
LEFT JOIN employees
ON
salaries.emp_no=employees.emp_no