SELECT name_city, COUNT(buy_id) AS Количество
from city
  inner join client ON city.city_id = client.city_id
  inner join buy ON client.client_id = buy.client_id
GROUP BY name_city
ORDER BY name_city, Количество DESC;