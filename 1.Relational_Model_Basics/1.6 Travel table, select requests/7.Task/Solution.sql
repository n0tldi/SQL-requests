select name, city, date_first, date_last 
from trip
where MONTH(date_first)=MONTH(date_last)
order by city, name
