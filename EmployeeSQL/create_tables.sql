-- DROP TABLE IF EXISTS departments;
-- DROP TABLE IF EXISTS titles;
-- DROP TABLE IF EXISTS employees;
-- DROP TABLE IF EXISTS dept_emp;
-- DROP TABLE IF EXISTS dept_manager;
-- DROP TABLE IF EXISTS salaries;

CREATE TABLE departments (
  dept_no varchar(10) NOT NULL PRIMARY KEY,
  dept_name varchar(30) NOT NULL
);

-- Insert data into departments

CREATE TABLE titles (
  title_id varchar(10) NOT NULL PRIMARY KEY,
  title varchar(30) NOT NULL
);

-- Insert data into titles

CREATE TABLE employees (
    emp_no int NOT NULL PRIMARY KEY,
    emp_title_id varchar(10) NOT NULL,
	birth_date date NOT NULL,
	first_name varchar(255) NOT NULL,
	last_name varchar(255) NOT NULL,
	sex varchar(10) NOT NULL,
	hire_date date NOT NULL,
	CONSTRAINT fk_emp_title_id FOREIGN KEY(emp_title_id) REFERENCES titles(title_id)
);

-- Insert data into employees

CREATE TABLE dept_emp (
  emp_no int NOT NULL,
  dept_no varchar(10) NOT NULL,
	CONSTRAINT PK_dept_emp PRIMARY KEY (emp_no, dept_no),
	CONSTRAINT fk_emp_no_1 FOREIGN KEY(emp_no) REFERENCES employees(emp_no),
	CONSTRAINT fk_dept_no_1 FOREIGN KEY(dept_no) REFERENCES departments(dept_no)
);

-- Insert data into dept_emp

CREATE TABLE dept_manager (
  dept_no varchar(10) NOT NULL,
  emp_no int NOT NULL,
  	CONSTRAINT PK_dept_manager PRIMARY KEY (dept_no, emp_no),
	CONSTRAINT fk_dept_no_2 FOREIGN KEY(dept_no) REFERENCES departments(dept_no),
	CONSTRAINT fk_emp_no_2 FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

-- Insert data into dept_manager

CREATE TABLE salaries (
  emp_no int NOT NULL,
  address character varying(50) NOT NULL,
	CONSTRAINT PK_salaries PRIMARY KEY (emp_no),
	CONSTRAINT fk_emp_no_3 FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

-- Insert data into salaries

-- Run an "everything" query on all 6 tables (can be used to view all of the data)

SELECT * FROM departments;

SELECT * FROM titles;

SELECT * FROM employees;

SELECT * FROM dept_emp;

SELECT * FROM dept_manager;

SELECT * FROM salaries;