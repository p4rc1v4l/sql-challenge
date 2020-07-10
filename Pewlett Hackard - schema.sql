﻿DROP TABLE IF EXISTS SALARY;
DROP TABLE IF EXISTS DEPT_MANAGER;
DROP TABLE IF EXISTS DEPT_EMP;
DROP TABLE IF EXISTS DEPARTMENT;
DROP TABLE IF EXISTS EMPLOYEE;
DROP TABLE IF EXISTS TITLE;

CREATE TABLE DEPARTMENT (
    dept_no VARCHAR(255) PRIMARY KEY NOT NULL,
    dept_name VARCHAR(255) NOT NULL
);

CREATE TABLE TITLE (
    title_id VARCHAR(255) PRIMARY KEY NOT NULL,
    title VARCHAR(255) NOT NULL
);

CREATE TABLE EMPLOYEE (
    emp_no int PRIMARY KEY NOT NULL,
    emp_title_id VARCHAR(255) NOT NULL,
    birth_date date NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    Last_name VARCHAR(255) NOT NULL,
    sex VARCHAR(255) NOT NULL,
    hire_date date NOT NULL,
    FOREIGN KEY (emp_title_id) REFERENCES TITLE(title_id)
);

CREATE TABLE DEPT_EMP (
    emp_no int NOT NULL,
    dept_no VARCHAR(255) NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES EMPLOYEE(emp_no),
    FOREIGN KEY (dept_no) REFERENCES DEPARTMENT(dept_no),
    PRIMARY KEY (emp_no, dept_no)
);

CREATE TABLE DEPT_MANAGER (
    dept_no VARCHAR(255) NOT NULL,
    emp_no int NOT NULL,
    FOREIGN KEY (dept_no) REFERENCES DEPARTMENT(dept_no),
    FOREIGN KEY (emp_no) REFERENCES EMPLOYEE(emp_no),
    PRIMARY KEY (dept_no, emp_no)
);

CREATE TABLE SALARY (
    emp_no int NOT NULL,
    salary numeric   NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES EMPLOYEE(emp_no),
    PRIMARY KEY (emp_no)
);
