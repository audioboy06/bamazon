CREATE DATABASE bamazon_db;

USE bamazon_db;

CREATE TABLE products (
	item_id INTEGER(11) AUTO_INCREMENT NOT NULL,
    product_name VARCHAR(100) NOT NULL,
    dept_name VARCHAR(100),
    price INTEGER(10) NOT NULL,
    quantity INTEGER(10) NOT NULL,
    PRIMARY KEY(item_id)
    );
    
INSERT INTO products (product_name, dept_name, price, quantity)
VALUES ("iPhone 8", "Electronics", 699, 5);
    
INSERT INTO products (product_name, dept_name, price, quantity)
VALUES ("iPhone 8 Plus", "Electronics", 799, 7);

INSERT INTO products (product_name, dept_name, price, quantity)
VALUES ("iPhone X", "Electronics", 999, 10);
    
INSERT INTO products (product_name, dept_name, price, quantity)
VALUES ("iMac Pro", "Electronics", 4999, 2);
    
INSERT INTO products (product_name, dept_name, price, quantity)
VALUES ("MacBook Pro 15", "Electronics", 2399, 5);

INSERT INTO products (product_name, dept_name, price, quantity)
VALUES ("MacBook Pro 13", "Electronics", 1299, 8);

INSERT INTO products (product_name, dept_name, price, quantity)
VALUES ("Apple Watch 42mm", "Wearable", 429, 6);

INSERT INTO products (product_name, dept_name, price, quantity)
VALUES ("Apple Watch 38mm", "Wearable", 399, 6);

INSERT INTO products (product_name, dept_name, price, quantity)
VALUES ("AirPods", "Accessories", 159, 10);

INSERT INTO products (product_name, dept_name, price, quantity)
VALUES ("Beats Studio3 Headphones", "Accessories", 349, 4);