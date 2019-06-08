CREATE DATABASE bamazon_db;
USE bamazon_db;
drop database bamazon_db;

CREATE TABLE products (
item_id INTEGER (18) AUTO_INCREMENT NOT NULL,
product_name varchar (50),
department_name varchar (50),
price integer (18),
stock_quantity integer (18),
PRIMARY KEY (item_id)
);

INSERT INTO products (product_name, department_name, price, stock_quantity) 
	VALUES ("Kindle", "Books & Audible", 89, 110);
INSERT INTO products (product_name, department_name, price, stock_quantity) 
	VALUES ("Sony Headphones", "Electronics", 120, 80);
INSERT INTO products (product_name, department_name, price, stock_quantity) 
	VALUES ("Backpack", "Luggage", 49, 90);
INSERT INTO products (product_name, department_name, price, stock_quantity) 
	VALUES ("Makeup", "Beauty", 50, 185);
INSERT INTO products (product_name, department_name, price, stock_quantity) 
	VALUES ("Fragance", "Beauty", 105, 30);
INSERT INTO products (product_name, department_name, price, stock_quantity) 
	VALUES ("Hair Care", "Beauty", 29, 65);
INSERT INTO products (product_name, department_name, price, stock_quantity) 
	VALUES ("Nintendo Switch", "Video Games", 298, 32);
INSERT INTO products (product_name, department_name, price, stock_quantity) 
	VALUES ("Toys and Games", "Rubik's Cube", 5.99, 40);
INSERT INTO products (product_name, department_name, price, stock_quantity) 
	VALUES ("Mountain bicycle", "Sports and Outdoors", 189, 29);
INSERT INTO products (product_name, department_name, price, stock_quantity) 
	VALUES ("Running tennis shoes", "Sports and Outdoors", 46, 67);

SELECT * FROM products;

