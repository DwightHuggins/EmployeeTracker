USE employee_db;

INSERT INTO department (name)
VALUES ("Sales"), ("Engineering"), ("Finance"), ("Legal");

INSERT INTO role (title, salary, department_id)
VALUES ("Sales Lead", 60000, 1), ("Sales Person", 40000, 1), ("Lead Engineer", 100000, 2), ("Software Engineer", 70000, 2), ("Account Manager", 50000, 1), ("Accountant", 60000, 3), ("Legal Team Lead", 150000,4), ("Lawyer", 90000,4);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Daryl", "Dixon",1,null), ("Rick", "Grimes",2,1), ("Negan", "Wilson",3,null), ("Carol", "Peletier",4,3), ("Maggie", "Green",5,1), ("Michonne", "Hawthorne",6,null), ("Eugene", "Porter",7,null), ("Rosita", "Espinosa",8,7);
