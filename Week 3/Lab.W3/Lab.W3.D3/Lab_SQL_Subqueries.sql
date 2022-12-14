use sakila;

#1 How many copies of the film Hunchback Impossible exist in the inventory system?

select*from inventory;
select*from film;

select film.film_id
from film
join sakila.inventory
using (film_id)
where title= "Hunchback Impossible"
group BY film_id;

select count(film_id)
from film
join sakila.inventory
using (film_id)
where title= "Hunchback Impossible"
group by film_id;


#2 List all films whose length is longer than the average of all the films.

select title from film
where length >(select avg(length)from film);

#3 Use subqueries to display all actors who appear in the film Alone Trip.

select*from actor;
select*from film_actor;
select*from film;

select first_name,last_name
from actor 
where actor_id in(select actor_id from film_actor
where film_id=(select film_id from film
where title= "Alone Trip"));


#4 Sales have been lagging among young families, and you wish to target all family movies for a promotion. Identify all movies categorized as family films.

select*from category;
select*from film_category;
select*from film;


SELECT title, category
FROM film_list
WHERE category = 'Family';

Get name and email from customers from Canada using subqueries. Do the same with joins. Note that to create a join, you will have to identify the correct tables with their primary keys and foreign keys, that will help you get the relevant information
