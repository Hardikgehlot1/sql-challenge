


DROP TABLE departments;
DROP TABLE employees;
DROP TABLE dept_emp;
DROP TABLE dept_manager;
DROP TABLE  salaries;
DROP TABLE titles;
  
create table departments(
    dept_no varchar(4),
    dept_name varchar(25),
    PRIMARY KEY (dept_no));
	
select * from departments;
	
create table titles(
    title_id varchar,
    title varchar(25),
    PRIMARY KEY (title_id));
	

select * from titles;

create table employees(
    emp_no int,
    emp_title varchar(5),
    birth_date date,
    first_name varchar(20),
    last_name varchar(20),
    sex varchar(1),
    hire_date date,
    PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_title) REFERENCES titles(title_id));

select * from employees;

create table dept_manager(
    dept_no varchar(8),
    emp_no int,
	primary key (dept_no,emp_no),
     FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	 FOREIGN KEY (emp_no) REFERENCES employees(emp_no));

select * from dept_manager;

create table dept_emp(
    emp_no int,
    dept_no varchar(8),
	primary key (dept_no,emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no));

select * from dept_emp;


create table salaries(
    emp_no int,
    salary  int,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no));
	
select * from salaries;
	
	
	