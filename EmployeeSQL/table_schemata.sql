CREATE TABLE departments (
    dept_no varchar(100) Not Null,
    dept_name varchar(100),
	Primary Key (dept_no) 
);

CREATE TABLE dept_emp (
    emp_no int Not Null,
    dept_no varchar(10) not Null,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE dept_manager (
    dept_no varchar(10) Not Null,
    emp_no int Not Null,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager (
    dept_no varchar(10) Not Null,
    emp_no int Not Null,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE employees (
    emp_no int Not Null,
    emp_title_id varchar(50) Not Null,
	birth_date varchar(50),
	first_name varchar(50),
	last_name varchar(50),
	sex varchar(5),
	hire_date varchar(50),
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id),
	Primary KEY (emp_no)
);

CREATE TABLE salaries (
emp_no int Not Null,
salary int,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE titles (
title_id varchar(50) Not Null,
title varchar(50),
Primary Key(title_id)
);