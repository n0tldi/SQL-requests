select buy_id, date_step_end
from buy_step
WHERE buy_step.step_id = 1 AND date_step_end IS NOT NULL;