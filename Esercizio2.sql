/* 1. Write insert statements to insert the following 5 ingredients */

CREATE TABLE INGREDIENTS (
  NAME VARCHAR(255)
);

INSERT INTO INGREDIENTS(NAME)
VALUES('Eggs'),
('Bread'),
('Beef Patty'),
('Lettuce'),
('Yoghurt');

/* */

/* 2. Write a SELECT statement to select the NAME of all the ingredients.*/

SELECT NAME FROM INGREDIENTS;

/* */

/* 3. Write a SELECT statement to select the NAME and the PRICE of the ingredients. */

CREATE TABLE INGREDIENTS (
  NAME VARCHAR(255),
  PRICE DOUBLE
);

INSERT INTO INGREDIENTS(NAME, PRICE)
VALUES('Eggs', 3.86),
('Bread', 4.96),
('Beef Patty', 10.57),
('Lettuce', 1.10),
('Yoghurt', 3.78);

SELECT NAME, PRICE FROM INGREDIENTS;

/* */

/*4. Write a SELECT statement to select all columns of ingredients, ordered by NAME. */

SELECT * FROM INGREDIENTS
ORDER BY NAME;

/* */

/*5. Write a SELECT statement to select all columns of ingredients, ordered by "GLUTEN_FREE" with the "true" items on top */

CREATE TABLE INGREDIENTS (
  NAME VARCHAR(255),
  PRICE DOUBLE,
  GLUTEN_FREE BOOLEAN
);

INSERT INTO INGREDIENTS(NAME, PRICE, GLUTEN_FREE)
VALUES('Eggs', 3.86, true),
('Bread', 4.96, false),
('Beef Patty', 10.57, true),
('Lettuce', 1.10, true),
('Yoghurt', 3.78, true);

SELECT * FROM INGREDIENTS
ORDER BY GLUTEN_FREE DESC;