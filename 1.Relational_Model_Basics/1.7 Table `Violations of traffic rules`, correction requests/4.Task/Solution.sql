select name, number_plate, violation
fROM fine 
GROUP BY name, number_plate, violation
HAVING  count(name) >= 2
ORDER BY name, number_plate, violation DESC;


