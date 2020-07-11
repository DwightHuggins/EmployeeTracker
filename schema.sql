--View all employees table
SELECT employee.id, CONCAT(employee.first_name, " ", employee.last_name) as "Employee", 
role.title AS Role, department.name AS Department, role.salary AS Salary, CONCAT(manager.first_name, " ", manager.last_name) as "Manager Name",employee.manager_id AS "Manager ID"
FROM employee
LEFT JOIN role 
ON employee.role_id = role.id
LEFT JOIN department 
ON role.department_id = department.id
LEFT JOIN employee manager 
  ON employee.manager_id = manager.id
ORDER BY department DESC;

--View employees by department table
SELECT department.name AS department, CONCAT(employee.first_name, " ", employee.last_name) as "Employee" , employee.id
FROM employee
LEFT JOIN role 
ON employee.role_id = role.id
LEFT JOIN department 
ON role.department_id = department.id
ORDER BY department.name DESC;

--View employees by manager table
 SELECT employee.manager_id AS "Manager ID",
CONCAT(manager.first_name, " ", manager.last_name) as "Manager Name",
 employee.id AS "Employee ID",
 CONCAT(employee.first_name, " ", employee.last_name) as "Employee"
  FROM employee employee
  LEFT JOIN employee manager 
  ON employee.manager_id = manager.id
  WHERE employee.manager_id IS NOT NULL
  ORDER BY "Manager Name" DESC;
  

--Manager list when not null
SELECT employee.manager_id
FROM employee
WHERE employee.manager_id IS NOT NULL;
--this one better -->
SELECT employee.manager_id AS "Manager ID",
  CONCAT(manager.first_name, " ", manager.last_name) as "Manager Name",
   employee.id AS "Employee ID",
   CONCAT(employee.first_name, " ", employee.last_name) as "Employee"
    FROM employee employee
    LEFT JOIN employee manager 
    ON employee.manager_id = manager.id
    WHERE employee.manager_id IS NOT NULL
    ORDER BY "Manager Name" DESC;

--New employee, replcae all values with ?
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Judith","Grimes",2,1);

--DELETE employee sql
DELETE FROM employee 
WHERE employee.id = ?;