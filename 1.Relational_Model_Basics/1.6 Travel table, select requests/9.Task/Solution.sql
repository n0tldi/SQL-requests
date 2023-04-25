SELECT name, city, date_first, 
DATEDIFF(date_last+1, date_first)*per_diem as Сумма
FROM trip
WHERE YEAR(date_first)=2020 and
      MONTH(date_first)=3 OR 
      MONTH(date_first)=2
ORDER BY name,Сумма DESC;
