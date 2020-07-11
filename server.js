var mysql = require("mysql");
var inquirer = require("inquirer");

// create the connection information for the sql database
var connection = mysql.createConnection({
  host: "localhost",

  // Your port; if not 3306
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: "Gracie19!",
  database: "employee_DB",
});

// connect to the mysql server and sql database
connection.connect(function (err) {
  if (err) throw err;
  console.log("connected as id " + connection.threadId + "\n");
  userPrompt();
});

//Start inquirer prompts
//What would you like to do list?
function userPrompt() {
  inquirer
    .prompt([
      {
        name: "action",
        type: "list",
        message: "What would you like to do?",
        choices: [
          "View All Employees",
          "View All Employees by Department",
          "View All Employees by Manager",
          "View All Roles",
          "View All Departments",
          "Add Employee",
          "Add Role",
          "Add Department",
          "Exit",
        ],
      },
    ])
    .then(function (answer) {
        // console.log(answer.action)
        //Conditional for selected action
        if (answer.action === "View All Employees") {
          //If 'View All Employees' is selected, call viewAll() function
          viewAll();
        }
        //If 'View All Employees by Dept' is selected, call viewDept() function
        else if (answer.action === "View All Employees by Department") {
          // console.log("View All Employees by Department Selected")
          viewEmpDept();
        }
        //If 'View All Employees by Manager' is selected, call viewManager() function
        else if (answer.action === "View All Employees by Manager") {
          // console.log("View All Employees by Manager Selected")
          viewManager();
        }
        //If 'View All Roles' is selected, call viewRoles() function
        else if (answer.action === "View All Roles") {
          // console.log("Add Employee Selected")
          viewRoles();
        }
        //If 'View All Departments' is selected, call viewDepartments() function
        else if (answer.action === "View All Departments") {
          // console.log("Add Employee Selected")
          viewDepartments();
        }
        //If 'Add Employee' is selected, call addEmployee() function
        else if (answer.action === "Add Employee") {
          // console.log("Add Employee Selected")
          addEmployee();
        }
        //If 'Add Role' is selected, call addRole() function
        else if (answer.action === "Add Role") {
          // console.log("Add role");
          addRole();
        }
        //If 'Add Department' is selected, call updateRole() function
        else if (answer.action === "Add Department") {
          // console.log("Add Department");
          addDepartment();
        }
        //If 'Exit' is selected, return userPrompt()
        else {
          console.log("Exit Selected");
          connection.end();
        }
  
      });
  }