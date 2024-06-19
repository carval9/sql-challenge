create table departments (
	dept_no text Primary Key,
	dept_name text
);

create table employee_department (
	emp_no numeric,
	dept_no text,
	Foreign Key (dept_no)
		References departments(dept_no)
);

create table manager (
	dept_no text,
	emp_no numeric,
	Foreign Key (dept_no)
		References departments(dept_no)
);

create table employees (
	emp_no numeric Primary Key,
	emp_title_id text,
	birth_date date,
	first_name text,
	last_name text,
	sex text,
	hire_date date
);

create table salaries (
	emp_no numeric,
	salary numeric
);

create table title (
	title_id text Primary Key,
	title text
);