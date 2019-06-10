
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
    if (err) 
    // throw err;
    console.log("\nWelcome to Bamazon!" );
    allProducts();
});

function allProducts() {
    connection.query("SELECT * FROM products;", function(err, results, fields) {
        if (err); 
        // throw err;
        else {
        console.table(results);
        }
      pickProduct();
    }
)};

function pickProduct() {
    inquirer.prompt([
        {
            name: "Id",
            type: "number",
            message: "What is the item id you would like to purchase?"

        },
        {
            name: "quantity",
            type: "nnumber",
            message: "How many units of the product would you like purchase?"
        }
    ]).then(function(answer){
        var product = answer.Id;
        var quantity = answer.quantity;
        
        connection.query("SELECT * FROM products WHERE id= ")


    })
}