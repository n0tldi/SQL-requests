SELECT city, COUNT(city) AS 'Количество'
FROM trip
GROUP BY city 
Order by Count(city) 
DESC LIMIT 2
