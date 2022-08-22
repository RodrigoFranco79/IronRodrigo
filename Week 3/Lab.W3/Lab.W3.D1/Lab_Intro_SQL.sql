#Lab_Intro_Sql 

use sakila;

# Review the tables in the database.
select * from sakila.film limit 10;

# Explore tables by selecting all columns from each table or using the in built review features for your client.
select * from sakila.actor;

# Select one column from a table. Get film titles.
select title from film;

# Select one column from a table and alias it. Get unique list of film languages under the alias language. Note that we are not asking you to obtain the language per each film, but this is a good time to think about how you might get that information in the future.
select release_year as alias_year from film ;
select language_id as languag from film ;

# Find out how many stores does the company have?
select count(*) from sakila.store;

# Find out how many employees staff does the company have?
select count(*) from sakila.staff;

# Return a list of employee first names only?
select * from sakila.staff;
select first_name from staff;

