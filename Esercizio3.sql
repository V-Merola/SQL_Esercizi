CREATE TABLE INGREDIENTS (
  NAME VARCHAR(255),
  PRICE DOUBLE,
  VEGETARIAN BOOLEAN,
  LACTOSE_FREE BOOLEAN,
  GLUTEN_FREE BOOLEAN,
  VEGAN BOOLEAN
);

INSERT INTO INGREDIENTS(NAME, PRICE, VEGETARIAN, LACTOSE_FREE, GLUTEN_FREE, VEGAN)
VALUES('Eggs', 3.86, true, true, true, false);

INSERT INTO INGREDIENTS(NAME, PRICE, VEGETARIAN, LACTOSE_FREE, GLUTEN_FREE, VEGAN)
VALUES('Bread', 4.96, true, true, false, false);

INSERT INTO INGREDIENTS(NAME, PRICE, VEGETARIAN, LACTOSE_FREE, GLUTEN_FREE, VEGAN)
VALUES('Beef Patty', 16.30, false, true, true, false);

INSERT INTO INGREDIENTS(NAME, PRICE, VEGETARIAN, LACTOSE_FREE, GLUTEN_FREE, VEGAN)
VALUES('Lettuce', 1.10, true, true, true, true);

INSERT INTO INGREDIENTS(NAME, PRICE, VEGETARIAN, LACTOSE_FREE, GLUTEN_FREE, VEGAN)
VALUES('Yoghurt', 3.78, true, false, true, true);


CREATE TABLE MEALS (
  NAME VARCHAR(255),
  PRICE DOUBLE,
  CALORIES INT
);

INSERT INTO MEALS(NAME, PRICE, CALORIES)
VALUES('Spaghetti Bolognese', 12.99, 600);

INSERT INTO MEALS(NAME, PRICE, CALORIES)
VALUES('Grilled Chicken Sandwich', 8.99, 400);

INSERT INTO MEALS(NAME, PRICE, CALORIES)
VALUES('Pesto Pasta', 10.99, 550);

INSERT INTO MEALS(NAME, PRICE, CALORIES)
VALUES('Steak and Mash', 19.99, 800);

INSERT INTO MEALS(NAME, PRICE, CALORIES)
VALUES('Sushi Platter', 15.99, 700);



/*1.Using a SELECT statement with a WHERE clause, retrieve all meals that have a price less than €15*/
SELECT NAME, PRICE FROM MEALS
WHERE PRICE < 15;


/*2.Using a SELECT statement with a WHERE clause, retrieve all ingredients that are vegetarian.*/
SELECT NAME, VEGETARIAN FROM INGREDIENTS
WHERE VEGETARIAN;


/*3.Using a SELECT statement with a WHERE clause, retrieve all meals that have more than 500 calories.*/
SELECT * FROM MEALS
WHERE CALORIES > 500;


/*4.Using a SELECT statement with a WHERE clause, retrieve all meals that have a price between €15 and €16.*/
SELECT * FROM MEALS
WHERE PRICE >= 15 && PRICE <= 16;


/*5.Using a SELECT statement with a WHERE clause, retrieve all ingredients that are both lactose-free (note lactose FREE) and gluten-free.*/
SELECT NAME, LACTOSE_FREE, GLUTEN_FREE FROM INGREDIENTS
WHERE LACTOSE_FREE && GLUTEN_FREE;


/*6.Using a SELECT statement with a WHERE clause and logical operator(s), retrieve all meals that have a price less than €15 or more than 600 calories.*/
SELECT * FROM MEALS
WHERE PRICE < 15 OR CALORIES > 600;


/*7.Using a SELECT statement with a WHERE clause, retrieve all ingredients that are vegan or gluten-free*/
SELECT NAME, VEGAN, GLUTEN_FREE FROM INGREDIENTS
WHERE VEGAN OR GLUTEN_FREE;


/*8. Using a SELECT statement with a WHERE clause, retrieve all meals with the name 'Pesto Pasta'*/
SELECT NAME FROM MEALS
WHERE NAME = 'Pesto Pasta';


/*9. Using a SELECT statement with a WHERE clause, retrieve all ingredients that are not lactose-free*/
SELECT NAME, LACTOSE_FREE FROM INGREDIENTS
WHERE !LACTOSE_FREE;


/*10. Using a SELECT statement with a WHERE clause and a logical operator, retrieve all meals that have a price more than €20 and less than 800 calories.*/
SELECT * FROM MEALS
WHERE PRICE > 20 && CALORIES < 800;