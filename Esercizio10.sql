/*
Using the INGREDIENT and MEAL tables, write a query to return the name of all meals that contain garlic.
Using the INGREDIENT and MEAL tables, write a query to return the number of meals with vegetarian ingredients.
Using the INGREDIENT and MEAL tables, write a query to return the names of meals that have at least 1 gluten free ingredient and at least 1 vegan ingredient.
Using the INGREDIENT and MEAL tables, write a query to return the average number of ingredients per meal.
Using the INGREDIENT and MEAL tables, write a query to return the names of meals that have more than 3 ingredients.
We do not have data for the tables below, please just write the SQL you'd need to make the following joins!

Using the following table definitions, write an inner join for the two tables
CREATE TABLE CUSTOMER (
    CUSTOMER_ID INT,
    NAME VARCHAR(255),
    ADDRESS VARCHAR(255)
);
CREATE TABLE ORDER (
    ORDER_ID INT,
    CUSTOMER_ID INT,
    ORDER_DATE DATE,
    TOTAL_COST DECIMAL(10,2)
);
Using the following table definitions, write an inner join for the two tables
CREATE TABLE PRODUCT (
    PRODUCT_ID INT,
    NAME VARCHAR(255),
    PRICE DECIMAL(10,2)
);
CREATE TABLE INVENTORY (
    PRODUCT_ID INT,
    STORE_ID INT,
    QUANTITY INT
);
*/


# 1.
select MEAL.NAME
from MEAL
join INGREDIENT on MEAL.MEAL_ID = INGREDIENT.MEAL_ID
where INGREDIENT.NAME = 'Garlic';


# 2.
select COUNT(*)
from MEAL
join INGREDIENT on MEAL.MEAL_ID = INGREDIENT.MEAL_ID
where VEGETARIAN = true;


# 3.
select distinct MEAL.NAME
from MEAL
join INGREDIENT on MEAL.MEAL_ID = INGREDIENT.MEAL_ID
where GLUTEN_FREE and VEGAN;


# 4.
select AVG(AVERAGE_NUMBER_OF_INGREDIENTS_PER_MEAL)
from
(select MEAL.NAME, count(*) as AVERAGE_NUMBER_OF_INGREDIENTS_PER_MEAL
from MEAL
join INGREDIENT on MEAL.MEAL_ID = INGREDIENT.MEAL_ID
group by MEAL.NAME
)
AVERAGE;


# 5.
select MEAL.NAME
from MEAL
join INGREDIENT on INGREDIENT.MEAL_ID = MEAL.MEAL_ID
group by MEAL.NAME
having COUNT(INGREDIENT.MEAL_ID) > 3;


# 6. Using the following table definitions, write an inner join for the two tables
CREATE TABLE CUSTOMER (
    CUSTOMER_ID INT,
    NAME VARCHAR(255),
    ADDRESS VARCHAR(255)
);

CREATE TABLE ORDER (
    ORDER_ID INT,
    CUSTOMER_ID INT,
    ORDER_DATE DATE,
    TOTAL_COST DECIMAL(10,2)
);


select *
from customers c
inner join order o
on c.CUSTOMER_ID = o.CUSTOMER_ID;


# 7. Using the following table definitions, write an inner join for the two tables
CREATE TABLE PRODUCT (
    PRODUCT_ID INT,
    NAME VARCHAR(255),
    PRICE DECIMAL(10,2)
);

CREATE TABLE INVENTORY (
    PRODUCT_ID INT,
    STORE_ID INT,
    QUANTITY INT
);


select *
from PRODUCT P
inner join INVENTORY I
on P.PRODUCT_ID = I.PRODUCT_ID;