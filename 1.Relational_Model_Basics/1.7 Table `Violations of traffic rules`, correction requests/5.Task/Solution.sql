UPDATE fine,(
select name, number_plate, violation
fROM fine 
GROUP BY name, number_plate, violation
HAVING  count(name) >= 2
ORDER BY name, number_plate, violation)
as new
SET sum_fine = IF(date_payment is null, sum_fine *2, sum_fine)
where fine.name = new.name;
Select * from fine;


