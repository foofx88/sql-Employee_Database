--table schema for Employee_DB
--initialise table
DROP TABLE salaries;
DROP TABLE titles;
DROP TABLE dept_managers;
DROP TABLE dept_emp;
DROP TABLE departments;
DROP TABLE employees;

--create table
CREATE TABLE employees (
emp_no INT NOT NULL,
emp_title VARCHAR NOT NULL,
birth_date VARCHAR NOT NULL ,
first_name VARCHAR NOT NULL,
last_name VARCHAR NOT NULL,
sex VARCHAR NOT NULL,
hire_date VARCHAR NOT NULL, --initially wanted to use DATE however due to datatype in csv file, changed to VARCHAR
PRIMARY KEY (emp_no)
);

--create table
CREATE TABLE departments (
dept_no VARCHAR,
dept_name VARCHAR NOT NULL,
PRIMARY KEY (dept_no)
);

--create table
CREATE TABLE dept_emp(
emp_no INT NOT NULL,
dept_no VARCHAR NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

--create table
CREATE TABLE dept_managers(
dept_no VARCHAR NOT NULL,
emp_no INT NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

--create table
CREATE TABLE titles(
title_id VARCHAR NOT NULL,
title VARCHAR NOT NULL
);

--create table
CREATE TABLE salaries(
emp_no INT NOT NULL,
salary INT NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

--checking if all values are imported into tables
SELECT * FROM salaries;
SELECT * FROM titles;
SELECT * FROM dept_managers;
SELECT * FROM dept_emp;
SELECT * FROM departments;
SELECT * FROM employees;
--looking good
