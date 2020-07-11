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