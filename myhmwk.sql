-- Q1 How many actors are there with the last name ‘Wahlberg’?

SELECT *
FROM actor
WHERE last_name LIKE 'Wa______';

--A: 2

-- Q2 How many payments were made between $3.99 and $5.99?

SELECT *
FROM payment
WHERE amount >= 3.99 AND amount <=  5.99;

--A: 5607

-- Q3 What FILM does the store have the most of? (search in inventory)

SELECT film_id, COUNT(*)
FROM inventory
GROUP BY film_id
HAVING COUNT(*) > 7
ORDER BY count DESC;

--A: 72

-- Q4 How many customers have the last name ‘Williams’?

SELECT last_name, COUNT(*)
FROM customer
WHERE last_name LIKE 'Wi%'
GROUP BY last_name
ORDER BY count DESC;

--A: 1

-- Q5 What store employee (get the id) sold the most rentals?

SELECT staff_id, COUNT(*)
FROM rental
GROUP BY staff_id
ORDER BY count DESC;

--A: 1 

-- Q6 How many different district names are there?

SELECT district, COUNT(*)
FROM address
GROUP BY district
ORDER BY count DESC;

--A: Buenos Aires

-- Q7 What film has the most actors in it? (use film_actor table and get film_id)

SELECT film_id, COUNT(*)
FROM film_actor
GROUP BY film_id
ORDER BY count DESC;

--A: 508

-- Q8 From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)

SELECT last_name, COUNT(*)
FROM customer
WHERE last_name LIKE '%es'
GROUP BY last_name
ORDER BY count DESC;

--A:  21

-- Q9 How many payment amounts 
--had a NUMBER OF RENTALS above 250 for 
--customer_id between 380 and 430? (use group by and having > 250)
SELECT amount, COUNT(rental_id)
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY rental_id, amount
HAVING COUNT(rental_id) > 250;


SELECT *
FROM payment
--A:not sure



--Q10 Within the film table, how many rating categories are there? 
--And what rating has the most movies total?

SELECT rating, COUNT(rating)
FROM film
GROUP BY rating
ORDER BY rating;

--A: 5, 223

