---TITLES---
CREATE TABLE Titles (
    title_id VARCHAR(5) NOT NULL,
    title VARCHAR(25) NOT NULL,
	Primary Key (title_id)
);

---EMPLOYEES---
CREATE TABLE Employees (
    emp_no INT NOT NULL,
    emp_title VARCHAR(5) NOT NULL,
    birth_date VARCHAR(10) NOT NULL,
    first_name VARCHAR(25) NOT NULL,
    last_name VARCHAR(25) NOT NULL,
    sex VARCHAR(1) NOT NULL,
    hire_date DATE NOT NULL,
    Primary Key (emp_no),
	Foreign Key (emp_title) References Titles(title_id)
);

---DEPARTMENTS---
CREATE TABLE Departments (
    dept_no VARCHAR(5) NOT NULL,
    dept_name VARCHAR(25) NOT NULL,
	PRIMARY KEY (dept_no)
);

---DEPARTMENT_MANAGERS---
CREATE TABLE Dept_Manager (
	dept_no VARCHAR(5) NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN Key (dept_no) REFERENCES Departments(dept_no),
	FOREIGN Key (emp_no) REFERENCES Employees(emp_no)
);

---DEPARTMENT_EMPLOYEES---
CREATE TABLE Dept_emp (
    emp_no INT NOT NULL,
    dept_no VARCHAR(5) NOT NULL,
	FOREIGN Key (dept_no) REFERENCES Departments(dept_no), 
    FOREIGN Key (emp_no) REFERENCES Employees(emp_no) 
);

---SALARIES---
CREATE TABLE Salaries (
    emp_no INT NOT NULL,
    salary INT NOT NULL,
    Foreign Key (emp_no) References Employees(emp_no)
);
