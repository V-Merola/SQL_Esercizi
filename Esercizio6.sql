/*
Using a SELECT statement with a GROUP BY clause and COUNT function, retrieve the number of orders for each meal.
Using a SELECT statement with a WHERE clause and SUM function, retrieve the total revenue for all meals that have a price greater than €15.
Using a SELECT statement with a GROUP BY clause and COUNT function, retrieve the number of meals that have more than 500 calories.
Using a SELECT statement with a WHERE clause and SUM function, retrieve the total price for all meals that have a name containing the letter 'S'.
You can find items that start with the letter s with the following where clause
WHERE LOWER(NAME) LIKE '%s%';
Using a SELECT statement with a WHERE clause, GROUP BY clause, and COUNT function, retrieve the number
of orders for each meal that were ordered before '202X-XX-XX 18:00:00' (Replace the Xs with your current date)
*/

CREATE TABLE MEALS (
  NAME VARCHAR(255),
  PRICE DOUBLE,
  CALORIES INT,
  ORDERED_MEALS TIMESTAMP
);

INSERT INTO MEALS(NAME, PRICE, CALORIES, ORDERED_MEALS)
VALUES('Spaghetti Bolognese', 12.99, 600, NOW());

INSERT INTO MEALS(NAME, PRICE, CALORIES, ORDERED_MEALS)
VALUES('Grilled Chicken Sandwich', 8.99, 400, NOW());

INSERT INTO MEALS(NAME, PRICE, CALORIES, ORDERED_MEALS)
VALUES('Pesto Pasta', 10.99, 550, NOW());

INSERT INTO MEALS(NAME, PRICE, CALORIES, ORDERED_MEALS)
VALUES('Steak and Mash', 19.99, 800, NOW());

INSERT INTO MEALS(NAME, PRICE, CALORIES, ORDERED_MEALS)
VALUES('Sushi Platter', 15.99, 700, NOW());


CREATE TABLE MEALS_TABLE AS
SELECT * FROM MEALS;

/* 1.Using a SELECT statement with a GROUP BY clause and COUNT function, retrieve the number of orders for each meal. */
SELECT COUNT(*) AS NUMBER_OF_MEALS FROM MEALS_TABLE
GROUP BY NAME;

/* 2.Using a SELECT statement with a WHERE clause and SUM function, retrieve the total revenue for all meals that have a price greater than €15. */
SELECT SUM(PRICE) AS TOTAL_REVENUE FROM MEALS_TABLE
WHERE PRICE > 15;

/* 3.Using a SELECT statement with a GROUP BY clause and COUNT function, retrieve the number of meals that have more than 500 calories. */
SELECT COUNT(CALORIES) AS HIGH_CALORIES_MEALS FROM MEALS_TABLE
WHERE CALORIES > 500
GROUP BY NAME;

/* 4.Using a SELECT statement with a WHERE clause and SUM function, retrieve the total price for all meals that have a name containing the letter 'S'. You can find items that start with the letter s with the following where clause WHERE LOWER(NAME) LIKE '%s%'; */
SELECT SUM(PRICE) AS PARTICULAR_SUM
FROM MEALS_TABLE
WHERE LOWER(NAME) LIKE '%s%';

/* 5.Using a SELECT statement with a WHERE clause, GROUP BY clause, and COUNT function, retrieve the number of orders for each meal that were ordered before '202X-XX-XX 18:00:00' (Replace the Xs with your current date) */
SELECT COUNT(ORDERED_MEALS) AS ORDERS FROM MEALS_TABLE
WHERE ORDERED_MEALS < '2023-06-18 18:00:00'
GROUP BY ORDERED_MEALS;