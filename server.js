//Dependencies//
const inquirer = require("inquirer")
const mysql = require("mysql")

const connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: "dbpassword",
    database: "employee_trackerDB"
});


//Connection ID//
connection.connect(function (err) {
    if (err) throw err
    console.log("Connected as Id" + connection.threadId)
    start();
});
//Initial Prompt //
function start() {
    inquirer.prompt([
        {
            type: "list",
            message: "What would you like to do?",
            name: "choice",
            choices: [
                "View All Employees?",
                "View All Employee's By Roles?",
                "View all Emplyees By Deparments",
                "Update Employee",
                "Add Employee?",
                "Add Role?",
                "Add Department?",
                "Quit"

            ]
        }
    ])
}