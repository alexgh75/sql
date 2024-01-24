
USE sakila;
#Display all available tables in the Sakila database:
SHOW TABLES;
#Retrieve all the data from the tables actor, film and customer.
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;
#Retrieve unique release years.
SELECT DISTINCT release_year FROM film;
#Determine the number of stores that the company has.
SELECT COUNT(*) AS num_stores FROM store;
# Determine the number of employees that the company has.
SELECT COUNT(*) AS num_employees FROM employee;
#Determine how many films are available for rent and how many have been rented.
SELECT
    (SELECT COUNT(*) FROM film) AS total_films,
    (SELECT COUNT(*) FROM rental) AS rented_films;
#Determine the number of distinct last names of the actors in the database.
SELECT COUNT(DISTINCT last_name) AS num_distinct_last_names FROM actor;
#Retrieve the 10 longest films.
SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;
#Retrieve all actors with the first name "SCARLETT"
SELECT *
FROM actor
WHERE first_name = 'SCARLETT';
#Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
SELECT *
FROM film
WHERE title LIKE '%ARMAGEDDON%' AND length > 100;
#Determine the number of films that include Behind the Scenes content
SELECT COUNT(*) AS num_behind_the_scenes_films
FROM film
WHERE special_features LIKE '%Behind the Scenes%';
,

