
--CREATING OUR DATABASE --
DROP DATABASE IF EXISTS employee_trackerDB;

CREATE DATABASE employee_trackerDB;

USE employee_trackerDB;

-- DEPARTMENT TABLE ----
CREATE TABLE department (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(40)
 
);
-- DEPARTMENT TABLE ----
CREATE TABLE role (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(40),
  salary DECIMAL,
  department_id INT,
  FOREIGN KEY (department_id) REFERENCES department(id)
);
-- EMPLOYEE ROLE TABLE ----
CREATE TABLE employee (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(40),
  last_name VARCHAR(40),
  manager_id INT,
  role_id INT,
  FOREIGN KEY (role_id) REFERENCES role(id),
  FOREIGN KEY (manager_id) REFERENCES employee(id)

);

-- DEPARTMENT SEEDS -----
INSERT INTO department (name)
VALUE ("Sales");
INSERT INTO department (name)
VALUE ("Engineering");
INSERT INTO department (name)
VALUE ("Human Resources");
INSERT INTO department (name)
VALUE ("Accounting");

-- EMPLOYEE ROLE SEEDS -------
INSERT INTO role (title, salary, department_id)
VALUE ("Lead Engineer", 100000, 2);
INSERT INTO role (title, salary, department_id)
VALUE ("Head of Human Resources", 600000, 4);
INSERT INTO role (title, salary, department_id)
VALUE ("Accountant", 85000, 3);
INSERT INTO role (title, salary, department_id)
VALUE ("Sales Lead", 80000, 1);
INSERT INTO role (title, salary, department_id)
VALUE ("Salesperson", 65000, 1);
INSERT INTO role (title, salary, department_id)
VALUE ("Software Engineer", 85000, 2);


-- EMPLOYEE SEEDS -------
INSERT INTO employee (first_name, last_name, manager_id, role_id)
VALUE ("Elizabeth", "Schue", null, 1);
INSERT INTO employee (first_name, last_name, manager_id, role_id)
VALUE ("Patrick", "Swayze", null, 2);
INSERT INTO employee (first_name, last_name, manager_id, role_id)
VALUE ("Mark","Ruffalo",null,3);
INSERT INTO employee (first_name, last_name, manager_id, role_id)
VALUE ("Angelica", "Houston", 1, 4);
INSERT INTO employee (first_name, last_name, manager_id, role_id)
VALUE ("Bette", "Midler", 4, 5);
INSERT INTO employee (first_name, last_name, manager_id, role_id)
VALUE ("Jason", "Sudekis", 1, 6);
INSERT INTO employee (first_name, last_name, manager_id, role_id)
VALUE ("Tom", "Hardy", 2, 7);

-- SELECTING FOR CREATING 
--TABLES IN OUR SQL WORKBENCH 
SELECT * FROM department;
SELECT * FROM role;
SELECT * FROM employee;
