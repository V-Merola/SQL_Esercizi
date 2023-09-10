/*
Using a CREATE TABLE AS statement, create a new table called 'CHEAP_MEALS' that contains all meals with a price less than €15.
Using an INSERT statement with a SELECT statement, insert all ingredients that are vegan into a new table called 'VEGAN_INGREDIENT', you can create an empty clone of a table with the following code:
CREATE TABLE VEGAN_INGREDIENT AS
SELECT * FROM INGREDIENT WHERE FALSE
Using a CREATE VIEW statement, create a view called 'EXPENSIVE_MEAL' that shows all meals with a price greater than €15.
Using a CREATE VIEW statement, create a view called 'LACTOSE_FREE_INGREDIENT' that shows all any ingredients without lactose.
Using a CREATE TABLE AS statement, create a new table called 'HIGH_CALORIE_MEAL' that contains all meals with more than 650 calories.
*/





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


/*1. Using a CREATE TABLE AS statement, create a new table called 'CHEAP_MEALS' that contains all meals with a price less than €15.*/
CREATE TABLE CHEAP_MEALS AS
SELECT NAME, PRICE FROM MEALS WHERE PRICE < 15;

SELECT NAME, PRICE FROM CHEAP_MEALS;


/*2. Using an INSERT statement with a SELECT statement, insert all ingredients that are vegan into a new table called 'VEGAN_INGREDIENT', you can create an empty clone of a table with the following code:*/
CREATE TABLE VEGAN_INGREDIENT AS
SELECT * FROM INGREDIENTS WHERE FALSE;

INSERT INTO VEGAN_INGREDIENT
SELECT * FROM INGREDIENTS WHERE VEGAN;

SELECT * FROM VEGAN_INGREDIENT;


/*3. Using a CREATE VIEW statement, create a view called 'EXPENSIVE_MEAL' that shows all meals with a price greater than €15.*/
CREATE VIEW EXPENSIVE_MEAL AS
SELECT NAME, PRICE FROM MEALS WHERE PRICE > 15;

SELECT NAME, PRICE FROM EXPENSIVE_MEAL;


/*4. Using a CREATE VIEW statement, create a view called 'LACTOSE_FREE_INGREDIENT' that shows all any ingredients without lactose.*/
CREATE VIEW LACTOSE_FREE_INGREDIENT AS
SELECT NAME, LACTOSE_FREE FROM INGREDIENTS WHERE LACTOSE_FREE;

SELECT NAME, LACTOSE_FREE FROM LACTOSE_FREE_INGREDIENT;


/*5. Using a CREATE TABLE AS statement, create a new table called 'HIGH_CALORIE_MEAL' that contains all meals with more than 650 calories.*/
CREATE TABLE HIGH_CALORIE_MEAL AS
SELECT NAME, CALORIES FROM MEALS WHERE CALORIES > 650;

SELECT NAME, CALORIES FROM HIGH_CALORIE_MEAL;