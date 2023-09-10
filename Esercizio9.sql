/*

Create your own customers table, make sure you create it with an auto_increment primary key.
Insert some customers with an insert statement.
Edit these customers using the UPDATE statement with a WHERE clause referring to the id.
Delete some customers with delete from statement with a WHERE clause referring to the id.
Delete all customers with a truncate statement.
Look at the tables below and write which column(s) you think would make a good primary key.

Question

CREATE TABLE Customers (
 customer_id INT NOT NULL AUTO_INCREMENT,
 first_name VARCHAR(255) NOT NULL,
 last_name VARCHAR(255) NOT NULL,
 email VARCHAR(255) NOT NULL,
 PRIMARY KEY (customer_id)
);
Question

CREATE TABLE Products (
 product_name VARCHAR(255) NOT NULL,
 product_description VARCHAR(255) NOT NULL,
 product_price DECIMAL(20, 3) NOT NULL,
 product_quantity INT NOT NULL
);
Question

CREATE TABLE Orders (
 order_id INT NOT NULL AUTO_INCREMENT,
 customer_id INT NOT NULL,
 expected_arrival_time DATE
);
9 - Question

CREATE TABLE Product_Orders (
 order_id INT NOT NULL AUTO_INCREMENT,
 product_name VARCHAR(255) NOT NULL,
 total_revenue DOUBLE
);
*/



# 1. Create your own customers table, make sure you create it with an auto_increment primary key.

create table CUSTOMERS (
	ID INT auto_increment,
	FIRST_NAME VARCHAR(255),
	LAST_NAME VARCHAR(255),
	ACCOUNT_IS_ACTIVE BOOLEAN,
	primary key (ID)
);


# 2. Insert some customers with an insert statement.
insert into CUSTOMERS(FIRST_NAME, LAST_NAME, ACCOUNT_IS_ACTIVE)
	values ('Vincenzo', 'Merola', true),
	('Nicola', 'Caputo', false),
	('Ettore', 'Sabbia', false),
	('Giovanni', 'Beniamino', true),
	('Luca', 'Panda', false);


# 3. Edit these customers using the UPDATE statement with a WHERE clause referring to the id.
select * from customers;

update customers
set LAST_NAME = 'Merola'
where ID = 3;



# 4. Delete some customers with delete from statement with a WHERE clause referring to the id.
delete from customers
where ID = 2;

delete from customers
where ID = 5;


# 5. Delete all customers with a truncate statement.
TRUNCATE CUSTOMERS;