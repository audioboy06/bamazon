
var mysql = require("mysql");
var inquirer = require("inquirer");

// Making a connection
var connection = mysql.createConnection({
    host: "localhost",
    port: 8889,

    user: "root",
    password: "root",
    database: "bamazon_db"
});

//Connecting....

connection.connect(function(err) {
    if (err) throw err;

    start();
});

function start() {
    inquirer.prompt({
        name: "welcome",
        type: "confirm",
        message: "Welcome to Bamazon! Would you like to order something?"
    })
    .then(function(answer) {
        if (answer.welcome === "y") {
            listItems();
        }
        else {
            console.log("Bye! Come back soon!");
        }
    });
}

function listItems() {
    connection.query("SELECT * FROM products"), (err, res) => {
        if (err) throw err;
        connection.end();
        for (var i = 0; i < res.length; i++){
            console.log(`${res[i].item_id} | ${res[i].product_name} | ${res[i].price}`);
        }
        console.log("------");
        
    };
    
};