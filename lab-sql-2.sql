select * from actor;
select * from sakila.actor
where first_name = 'Scarlett'; -- taks 1 


select * from sakila.actor
where last_name = 'Johansson'; -- taks 2


select max(film_id) from sakila.inventory; # taks 3, 1000 films or:

select count(distinct(title)) from film; # task 3, same outcome 


select * from rental
   where return_date is null;
select sum(isnull(return_date)) from rental; -- task 4, 183 movies are currently rented


select count(distinct(title)) from film
     where rental_duration is not null; #task 4, 1000 movies have been rented previously. 
     
     
select min(rental_duration) from film; -- task 5

select max(rental_duration) from film;  -- task 5


select min(length) as min_duration from film; -- task 6, 46 min.

select max(length) as max_duration from film; -- task 6, 185 min.


select round(avg(length),2) as avarage_duration from film; -- task 7 , 115.27 min
-- task 8 , 1 h 55 m

select * from film
where length > 180; -- task 9, 39 films

select * from customer;
select   
	concat(substring(first_name,1, 1), lower(substring(first_name, 2, 15))) as first_name_formatted, 
	upper(last_name) as last_name_formatted, 
	lower(email) as email_formatted from customer;   -- task 10
    
select title, length(title) as title_length from film
	order by title_length desc; -- task 11

    
    






