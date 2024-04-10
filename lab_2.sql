use sakila;
-- challenge 1
select* from film;
select min(length) as min_duration from film;
select max(length)as max_duration from film;
select avg(length) from film;
-- 1.2
select round(avg(length/60)) as avg_lenght from film;
-- challenge 2.1
select min(rental_date) as early, max(rental_date) as late from rental;
SELECT DATEDIFF('2006-02-14', '2005-05-24') AS DateDiff;
-- 2.2
SELECT extract(MONTH from rental_date) from rental LIMIT 20;
SELECT extract(DAY from rental_date) from rental LIMIT 20;
SELECT WEEKDAY(rental_date) as weekday, month(rental_date) as Month
from rental LIMIT 20;
-- 3
Select title, rental_duration from FILM;
Select title, IFNULL(rental_duration, 'NOT AVAILABLE') as rental_duration from FILM ORDER BY title ASC;

-- challenge 2
SELECT count(DISTINCT title)
from film;

SELECT count(DISTINCT rating)
from film;

SELECT count(DISTINCT title) as number, rating
from film
GROUP BY rating
ORDER by number;


-- 2.1
SELECT AVG(length) as average, rating
FROM film
GROUP BY rating
ORDER BY average;

-- 2.2
SELECT AVG(length) as average, rating
FROM film
GROUP BY rating
ORDER BY average DESC;
