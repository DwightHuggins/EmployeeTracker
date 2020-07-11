DROP DATABASE IF EXISTS employee_db;

CREATE DATABASE employee_db;

USE employee_db;

CREATE TABLE department(
    id INT AUTO_INCREMENT,
    name VARCHAR (30),
    PRIMARY KEY (id)
);

CREATE TABLE role(
    id INT AUTO_INCREMENT,
    title VARCHAR (30),
    salary DECIMAL,
    department_id INT,
     PRIMARY KEY (id)
     FOREIGN KEY (department_id) REFERENCES department (role_id)
);

CREATE TABLE employee(
    id INT AUTO_INCREMENT, 
   first_name VARCHAR (30),
   last_name VARCHAR (30),
   role_id INT,
   manager_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (role_id) REFERENCES role(id),
    FOREIGN KEY (manager_id) REFERENCES employee(id)
 );


INSERT INTO department (name)
VALUES ("Sales"), ("Engineering"), ("Finance"), ("Legal");

INSERT INTO role (title, salary)
VALUES ("Sales Lead", 60000), ("Sales Person", 40000), ("Lead Engineer", 100000), ("Software Engineer", 70000), ("Account Manager", 50000), ("Accountant", 60000), ("Legal Team Lead", 150000), ("Lawyer", 90000);

INSERT INTO employee (first_name, last_name)
VALUES ("Daryl", "Reedus"), ("Rick", "Grimes"), ("Negan", "Wilson"), ("Carol", "Peletier"), ("Maggie", "Green"), ("Michonne", "Hawthorne"), ("Eugene", "Porter"), ("Rosita", "Espinosa");


SELECT * FROM department;
SELECT * FROM role;
SELECT * FROM employee;