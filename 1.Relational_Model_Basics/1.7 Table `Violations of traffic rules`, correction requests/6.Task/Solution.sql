UPDATE fine, payment
SET fine.date_payment = payment.date_payment,
    fine.sum_fine = IF(
        DATEDIFF(payment.date_payment, fine.date_violation) <= 20,
         fine.sum_fine/2, 
         fine.sum_fine
         )
WHERE fine.name = payment.name AND
      fine.number_plate=payment.number_plate AND
      fine.violation=payment.violation AND
      fine.date_payment IS NULL;
SELECT * FROM fine;


