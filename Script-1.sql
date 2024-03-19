-- question one
SELECT *
FROM actor
WHERE last_name = 'Wahlberg';
-- answer 2





-- question 2
SELECT count(*)
FROM payment 
WHERE amount between 3.99 AND 5.99;
-- answer 5607



-- question 3
SELECT film_id, count(*) AS film_numbers
FROM inventory
GROUP BY film_id 
HAVING count(*) = '7';
-- answer is 116



-- question 4
SELECT first_name
FROM customer 
WHERE first_name = 'Willie';
-- answer is 2



-- question 5
SELECT staff_id, COUNT(*) AS total_sales
FROM rental
WHERE staff_id IN (1, 2)
GROUP BY staff_id;
-- answer: staff_id is 1 for employee with the most sales


-- question 6
SELECT count(DISTINCT district)
FROM address; 
-- 378


-- question 7
SELECT film_id, COUNT(*) AS num_actors
FROM film_actor
GROUP BY film_id
ORDER BY num_actors DESC;
-- answer: Lambs Cincinatti

-- question 8
SELECT COUNT(last_name) 
FROM customer
WHERE last_name ILIKE '%es';
-- answer: 21



--question 9


SELECT amount, COUNT(*) 
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount
HAVING COUNT(*) > 250
ORDER BY count desc;

--this was a tricky one because I had a hard time understanding what was asked, but 
--I believe what I'm supposed to do is give you the payment amounts that occured more that 250 times
--between customer id's 380 and 430. If I'm wrong let me know and I'll come back and fix it.

-- answer $2.99, $4.99, and $0.99. These 3 payments occured more than 250 times between the customer_id's 380 and 430



-- question 10
SELECT rating, Count(*) AS ratings_total
FROM film
GROUP BY rating
ORDER BY ratings_total DESC;
-- PG13 with 223 and 5 rating categories
