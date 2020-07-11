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