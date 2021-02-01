-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE employees (
    emp_no int   NOT NULL,
    emp_title_id char(5)   NOT NULL,
    birth_date date   NOT NULL,
    first_name varchar(40)   NOT NULL,
    last_name varchar(40)   NOT NULL,
    sex char(1)   NOT NULL,
    hire_date date   NOT NULL,
    CONSTRAINT pk_employees PRIMARY KEY (emp_no)
);

CREATE TABLE salaries (
    emp_no int   NOT NULL,
    salary dec   NOT NULL
);

CREATE TABLE titles (
    title_id char(5)   NOT NULL,
    title varchar(40)   NOT NULL,
    CONSTRAINT pk_titles PRIMARY KEY (title_id),
    CONSTRAINT uc_titles_title UNIQUE (title)
);

CREATE TABLE departments (
    dept_no char(4)   NOT NULL,
    dept_name varchar(40)   NOT NULL,
    CONSTRAINT pk_departments PRIMARY KEY (dept_no),
    CONSTRAINT uc_departments_dept_name UNIQUE (dept_name)
);

CREATE TABLE dep_emp (
    emp_no int   NOT NULL,
    dept_no varchar(4)   NOT NULL
);

CREATE TABLE dep_manager (
    dept_no char(4)   NOT NULL,
    emp_no int   NOT NULL
);

ALTER TABLE employees ADD CONSTRAINT fk_employees_emp_title_id FOREIGN KEY(emp_title_id)
REFERENCES titles (title_id);

ALTER TABLE salaries ADD CONSTRAINT fk_salaries_emp_no FOREIGN KEY(emp_no)
REFERENCES employees (emp_no);

ALTER TABLE dep_emp ADD CONSTRAINT fk_dep_emp_emp_no FOREIGN KEY(emp_no)
REFERENCES employees (emp_no);

ALTER TABLE dep_emp ADD CONSTRAINT fk_dep_emp_dept_no FOREIGN KEY(dept_no)
REFERENCES departments (dept_no);

ALTER TABLE dep_manager ADD CONSTRAINT fk_dep_manager_dept_no FOREIGN KEY(dept_no)
REFERENCES departments (dept_no);

ALTER TABLE dep_manager ADD CONSTRAINT fk_dep_manager_emp_no FOREIGN KEY(emp_no)
REFERENCES employees (emp_no);

