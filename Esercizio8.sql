/*
Add constraints to every column of the INGREDIENTS table, you should use NOT NULL for some columns and unique for other(s)
*/


select * from ingredient;

alter table ingredient
add constraint unique(NAME);

alter table ingredient
MODIFY NAME VARCHAR(255) not null;

alter table ingredient
modify CONTAINS_LACTOSE BOOLEAN not null;

alter table ingredient
modify VEGETARIAN BOOLEAN not null;

alter table ingredient
modify VEGAN BOOLEAN not null;

modify GLUTEN_FREE BOOLEAN not null;