CREATE TABLE employees1 (
	emp_no        INT         NOT NULL,
	emp_title_id  VARCHAR(5)  NOT NULL, 
	birth_date    DATE        NOT NULL, 
	first_name    VARCHAR(20) NOT NULL, 
	last_name     VARCHAR(20) NOT NULL, 
	sex           VARCHAR(1)  NOT NULL, 
	hire_date     DATE,
	PRIMARY KEY (emp_no)
);

CREATE TABLE departments1 (
	dept_no VARCHAR(4)    NOT NULL,
	dept_name VARCHAR(20) NOT NULL, 
	PRIMARY KEY (dept_no),
	UNIQUE      (dept_name)
);

CREATE TABLE dept_manager1 (
	dept_no VARCHAR(4)    NOT NULL,
	emp_no  INT           NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees1 (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments1 (dept_no),
	PRIMARY KEY (emp_no, dept_no)
);

CREATE TABLE dept_emp1 (
	emp_no  INT        NOT NULL,
	dept_no VARCHAR(4) NOT NULL, 
	FOREIGN KEY (emp_no) REFERENCES employees1 (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments1 (dept_no),
	PRIMARY KEY (emp_no, dept_no)
);


CREATE TABLE titles2 (
	title_id VARCHAR(5)  NOT NULL,
	title    VARCHAR(20) NOT NULL,
	FOREIGN KEY (title_id) REFERENCES employees1 (emp_title_id)
);


CREATE TABLE salaries1 (
	emp_no INT    NOT NULL,
	salary INT    NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees1 (emp_no),
	PRIMARY KEY (emp_no, salary)
);