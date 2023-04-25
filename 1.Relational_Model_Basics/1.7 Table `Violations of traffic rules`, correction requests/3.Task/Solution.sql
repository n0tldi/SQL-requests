update fine as f, traffic_violation as tv
set f.sum_fine = tv.sum_fine
where f.sum_fine 
is null and f.violation = tv.violation;


