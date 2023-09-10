/*
Write a query to find the maximum price of a meal with more than 500 calories.
Write a query to find the average calories of meals that cost more than 15 EUR
Write a query to select all meals that have the MAX price, using HAVING and MAX()
Write a query to select all meals that have a price lower than the average price, using HAVING and AVG
Write a query to select all meals that have a price lower than the average price and have more than 600 calories
*/

CREATE TABLE MEAL_ORDER (
  MEAL_NAME VARCHAR(255),
  PRICE DOUBLE,
  CALORIES INT,
  TIME_MEAL_ORDERED TIMESTAMP
);

INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME, PRICE, CALORIES)
VALUES (NOW(), 'Spaghetti Bolognese', 12.99, 600),
(DATE_ADD(NOW(), INTERVAL 1 HOUR), 'Grilled Chicken Sandwich', 8.99, 400),
(DATE_ADD(NOW(), INTERVAL 2 HOUR), 'Pesto Pasta', 10.99, 550),
(DATE_ADD(NOW(), INTERVAL 3 HOUR), 'Steak and Mash', 19.99, 800),
(DATE_ADD(NOW(), INTERVAL 4 HOUR), 'Spaghetti Bolognese', 12.99, 600),
(DATE_ADD(NOW(), INTERVAL 5 HOUR), 'Sushi Platter', 15.99, 700),
(DATE_ADD(NOW(), INTERVAL 6 HOUR), 'Pesto Pasta', 10.99, 550),
(DATE_ADD(NOW(), INTERVAL 7 HOUR), 'Spaghetti Bolognese', 12.99, 600),
(DATE_ADD(NOW(), INTERVAL 8 HOUR), 'Steak and Mash', 19.99, 800),
(DATE_ADD(NOW(), INTERVAL 9 HOUR), 'Grilled Chicken Sandwich', 8.99, 400),
(DATE_ADD(NOW(), INTERVAL 10 HOUR), 'Spaghetti Bolognese', 12.99, 600),
(DATE_ADD(NOW(), INTERVAL 11 HOUR), 'Pesto Pasta', 10.99, 550),
(DATE_ADD(NOW(), INTERVAL 12 HOUR), 'Sushi Platter', 15.99, 700),
(DATE_ADD(NOW(), INTERVAL 13 HOUR), 'Spaghetti Bolognese', 12.99, 600),
(DATE_ADD(NOW(), INTERVAL 14 HOUR), 'Steak and Mash', 19.99, 800),
(DATE_ADD(NOW(), INTERVAL 15 HOUR), 'Grilled Chicken Sandwich', 8.99, 400),
(DATE_ADD(NOW(), INTERVAL 16 HOUR), 'Sushi Platter', 15.99, 700),
(DATE_ADD(NOW(), INTERVAL 17 HOUR), 'Steak and Mash', 19.99, 800),
(DATE_ADD(NOW(), INTERVAL 18 HOUR), 'Spaghetti Bolognese', 12.99, 600),
(DATE_ADD(NOW(), INTERVAL 19 HOUR), 'Grilled Chicken Sandwich', 8.99, 400),
(DATE_ADD(NOW(), INTERVAL 20 HOUR), 'Pesto Pasta', 10.99, 550),
(DATE_ADD(NOW(), INTERVAL 21 HOUR), 'Sushi Platter', 15.99, 700),
(DATE_ADD(NOW(), INTERVAL 22 HOUR), 'Steak and Mash', 19.99, 800);


# 1.Write a query to find the maximum price of a meal with more than 500 calories.
SELECT MEAL_NAME, MAX(PRICE) FROM MEAL_ORDER
WHERE CALORIES > 500
GROUP BY MEAL_NAME;

# 2. Write a query to find the average calories of meals that cost more than 15 EUR.
SELECT MEAL_NAME, AVG(CALORIES) FROM MEAL_ORDER
WHERE PRICE > 15
GROUP BY MEAL_NAME;

# 3. Write a query to select all meals that have the MAX price, using HAVING and MAX().
SELECT MEAL_NAME, PRICE
FROM MEAL_ORDER
HAVING PRICE = (SELECT MAX(PRICE) FROM MEAL_ORDER);

#4. Write a query to select all meals that have a price lower than the average price, using HAVING and AVG
SELECT MEAL_NAME, AVG(PRICE)
FROM MEAL_ORDER
GROUP BY MEAL_NAME, PRICE
HAVING PRICE < (SELECT AVG(PRICE) FROM MEAL_ORDER);

#5. Write a query to select all meals that have a price lower than the average price and have more than 600 calories
SELECT MEAL_NAME, PRICE, CALORIES
FROM MEAL_ORDER
WHERE PRICE < (SELECT AVG(PRICE) FROM MEAL_ORDER)
AND CALORIES > 600;