#1 Which actor has appeared in the most films?
#Hint: group by actor_id
# GINA DEGENERES	42

select * from sakila.actor;

select * from sakila.film_actor;


select actor.first_name,actor.last_name,count(film_actor.film_id)
from actor
join sakila.film_actor 
using (actor_id)
group by actor_id
order by count(film_ACTOR.FILM_ID) desc
limit 1;

#2 Most active customer (the customer that has rented the most number of films)
# ELEANOR HUNT	46

select * from sakila.rental;
select * from sakila.customer;

select customer.first_name,customer.last_name,count(rental.customer_id)
from rental
join sakila.customer
using (customer_id)
group by customer_id
order by count(rental.customer_id) desc
limit 1;

#3 List number of films per category.

select * from sakila.film_category;
select * from sakila.category; 


select category.name, count(film_id) from film_category
join category
using (category_id)
group by category_id;

#4 Display the first and last names, as well as the address, of each staff member.

select * from sakila.staff; 
select * from sakila.address; 


select staff.first_name,staff.last_name,address.address
from staff
join address
using (address_id);

#5 Display the total amount rung up by each staff member in August of 2005.

select * from sakila.staff;
select * from sakila.payment;

Select concat(s.first_name,' ',s.last_name) 
as "staff_personal", sum(p.amount) as "final_amount"
from payment as p
join staff as s
on p.staff_id = s.staff_id
where payment_date like '2005-08%'
group by p.staff_id;

#6 List each film and the number of actors who are listed for that film.


select f.title as "film", count(fa.actor_id) as "number_of_actors"
from film as f
join film_actor as fa
on f.film_id = fa.film_id
group by f.title;


#7 Using the tables payment and customer and the JOIN command, list the total paid by each customer. List the customers alphabetically by last name.

select concat(c.first_name,' ',c.last_name) as 'Customer Name', sum(p.amount) as 'Total Paid'
from payment as p
join customer as c
on p.customer_id = c.customer_id
group by p.customer_id;


	


