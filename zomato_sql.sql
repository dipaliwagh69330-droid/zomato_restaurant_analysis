CREATE DATABASE zomato_analysis;
USE zomato_analysis;

SELECT * FROM zomato_restaurants;

ALTER TABLE zomato_restaurants
RENAME COLUMN `restaurant name` TO restaurant_name;

ALTER TABLE zomato_restaurants
RENAME COLUMN `MyUnknownColumn` TO Sr_no;

ALTER TABLE zomato_restaurants
RENAME COLUMN `restaurant type` TO restaurant_type;

ALTER TABLE zomato_restaurants
RENAME COLUMN `rate (out of 5)` TO rating;

ALTER TABLE zomato_restaurants
RENAME COLUMN `num of ratings` TO no_of_ratings;

ALTER TABLE zomato_restaurants
RENAME COLUMN `avg cost (two people)` TO avg_cost;

ALTER TABLE zomato_restaurants
RENAME COLUMN `table booking` TO table_booking;

ALTER TABLE zomato_restaurants
RENAME COLUMN `cuisines type` TO cuisines_type;

ALTER TABLE zomato_restaurants
RENAME COLUMN `local address` TO local_address;

SELECT * FROM zomato_restaurants;

ALTER TABLE zomato_restaurants
RENAME TO restaurants;



SELECT restaurant_name, rating FROM restaurants
WHERE rating > 4
ORDER BY rating DESC 
LIMIT 10;

SELECT restaurant_type, AVG(rating) AS avg_rating
FROM restaurants
GROUP BY restaurant_type
ORDER BY avg_rating
LIMIT 5;

SELECT area, COUNT(restaurant_name) AS no_of_resto
FROM restaurants
GROUP BY area
ORDER BY no_of_resto DESC
LIMIT 10;


SELECT online_order, AVG(rating) AS avg_rating
FROM restaurants
GROUP BY online_order;

SELECT table_booking, AVG(rating) AS avg_rating
FROM restaurants 
GROUP BY table_booking;


SELECT area, AVG(avg_cost) AS avg_cost
FROM restaurants
GROUP BY area 
ORDER BY avg_cost DESC
LIMIT 10;


SELECT restaurant_name, no_of_ratings
FROM restaurants
ORDER BY no_of_ratings DESC
LIMIT 10;

SELECT restaurant_type, AVG(rating) AS avg_rating
FROM restaurants
GROUP BY restaurant_type
HAVING avg_rating > 4;








