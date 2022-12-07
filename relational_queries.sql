CREATE TABLE customers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    email TEXT);
    
INSERT INTO customers (name, email) VALUES ("Doctor Who", "doctorwho@timelords.com");
INSERT INTO customers (name, email) VALUES ("Harry Potter", "harry@potter.com");
INSERT INTO customers (name, email) VALUES ("Captain Awesome", "captain@awesome.com");

CREATE TABLE orders (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    customer_id INTEGER,
    item TEXT,
    price REAL);

INSERT INTO orders (customer_id, item, price)
    VALUES (1, "Sonic Screwdriver", 1000.00);
INSERT INTO orders (customer_id, item, price)
    VALUES (2, "High Quality Broomstick", 40.00);
INSERT INTO orders (customer_id, item, price)
    VALUES (1, "TARDIS", 1000000.00);
 
--  Create a query that lists the name and email of every customer followed by the item and price of orders they've made. 
-- Use a LEFT OUTER JOIN so that a customer is listed even if they've made no orders, and don't add any ORDER BY: 
    
SELECT customers.name, customers.email, orders.item, orders.price 
    FROM customers
    LEFT OUTER JOIN orders
    ON customers.id = orders.customer_id
    ;

-- Schema:
customers |3rows   |
----------+--------+
id (PK)   | INTEGER|
name      |    TEXT|
email     |    TEXT|

orders      |3rows   |
----------+--------+
id (PK)     | INTEGER|
customer_id | INTEGER|
item        |    TEXT|
price       |    REAL|


-- Results:

name            |email                   |item                    |price  |
----------------+------------------------+------------------------+--------
Doctor Who      |doctorwho@timelords.com |Sonic Screwdriver       |1000
Doctor Who      |doctorwho@timelords.com |TARDIS                  |1000000
Harry Potter    |harry@potter.com        |High Quality Broomstick |40
Captain Awesome	|captain@awesome.com     |NULL                    |NULL


-- Create a query that will result in one row per each customer, with their name, email, and total amount of money they've spent on orders
-- Sort the rows according to the total money spent, from the most spent to the least spent.

SELECT customers.name, customers.email, sum(orders.price) AS total_spent
    FROM customers
    LEFT OUTER JOIN orders
    ON customers.id = orders.customer_id
    GROUP BY customers.name
    ORDER BY orders.price DESC
    ;

-- Results:

name            |email	                 |total_spent |
----------------+------------------------+-------------
Doctor Who      |doctorwho@timelords.com |1001000
Harry Potter    |harry@potter.com        |40
Captain Awesome |captain@awesome.com     |NULL


