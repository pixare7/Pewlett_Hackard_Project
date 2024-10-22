
-- Table Schemata

--------------------------------------------------------------------------------------------

-- create tables

CREATE TABLE titles (
    title_id VARCHAR(5) NOT NULL PRIMARY KEY,
    title VARCHAR(50) NOT NULL
);

CREATE TABLE employees (
    emp_no INTEGER NOT NULL PRIMARY KEY,
    emp_title_id VARCHAR (50) NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR (50) NOT NULL,
    last_name VARCHAR (50) NOT NULL,
    sex VARCHAR (1) NOT NULL,
    hire_date DATE NOT NULL,
    FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

CREATE TABLE departments (
    dept_no VARCHAR (50) NOT NULL PRIMARY KEY,
    dept_name VARCHAR (50) NOT NULL
);

CREATE TABLE dept_emp (
    emp_no INTEGER NOT NULL,
    dept_no VARCHAR (6) NOT NULL,
    PRIMARY KEY (emp_no, dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager (
    dept_no VARCHAR (6) NOT NULL,
    emp_no INTEGER NOT NULL,
    PRIMARY KEY (dept_no, emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE salaries (
    emp_no INTEGER NOT NULL PRIMARY KEY,
    salary INTEGER NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- import data

COPY titles (title_id, title)
FROM 'C:/repos/sql-project/data/titles.csv'
DELIMITER ','
CSV HEADER;

COPY employees (emp_no, emp_title_id, birth_date, first_name, last_name, sex, hire_date)
FROM 'C:/repos/sql-project/data/employees.csv'
DELIMITER ','
CSV HEADER;

COPY departments (dept_no, dept_name)
FROM 'C:/repos/sql-project/data/departments.csv'
DELIMITER ','
CSV HEADER;

COPY dept_emp (emp_no, dept_no)
FROM 'C:/repos/sql-project/data/dept_emp.csv'
DELIMITER ','
CSV HEADER;

COPY dept_manager (dept_no, emp_no)
FROM 'C:/repos/sql-project/data/dept_manager.csv'
DELIMITER ','
CSV HEADER;

COPY salaries (emp_no, salary)
FROM 'C:/repos/sql-project/data/salaries.csv'
DELIMITER ','
CSV HEADER;

----- drop tables to recreate

