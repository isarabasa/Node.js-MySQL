
var mysql = require("mysql");
var inquirer = require ("inquirer");

var connection = mysql.createConnection({
    host: "localhost",
    port:  3300,
    user: "root",
    password: "pieropaolo7",
    database: "bamazon_db"
});

connection.connect(function(err){
    if (err) throw err;
    console.log("\nWelcome to Bamazon!" );
    allProducts();
});

function allProducts() {
    connection.query("SELECT * from products;", function(err, results, fields) {
        if (err) throw err;
        else {
        console.table(results);
        }
      pickProduct();
     
    }
    
)}


function pickProduct() {
    inquirer.prompt([
        {
            name: "Product",
            message: 
        }
    ])
}