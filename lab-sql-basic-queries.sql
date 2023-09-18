use sakila;

-- Show all tables

show tables;

-- Retrieve all the data from the tables actor, film and customer

select * from actor;

select * from film;

select * from customer;
-- 3.
-- Titles of all films from the film table
select distinct(title) as all_film_titles from film;

--  List of languages used in films, with the column aliased as language from the language table
select distinct(name) as language from language;

-- List of first names of all employees from the staff table
select first_name as employee_first_name from staff;

-- 4 Retrieve unique release years
select distinct(release_year) from film;

-- 5
-- .1 Determine the number of stores that the company has.
select count(store_id) as number_of_stores from store;
-- 2 Determine the number of employees that the company has.
select count(staff_id) from staff;


-- 3 Determine how many films are available for rent and how many have been rented.
select (count(rental_date)-count(return_date)) as unavailable,
count(return_date) as available  from rental; -- u

-- 4 Determine the number of distinct last names of the actors in the database.
select count(distinct(last_name)) from actor;


-- 6
-- Retrieve the 10 longest films.
select film_id, title, length  from film
order by length desc
limit 10;

-- 7 Use filtering techniques in order to:

-- 1 Retrieve all actors with the first name "SCARLETT".
select * from actor
where first_name = 'scarlett';

-- 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
select film_id, title, length  from film
where title  like '%ARMAGEDDON%' and length > 100;

-- 7.3 Determine the number of films that include Behind the Scenes content 
select film_id, title, special_features from film
where special_features like '%behind the scenes';