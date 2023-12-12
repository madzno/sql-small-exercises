ALTER TABLE employees
ALTER COLUMN department
SET DEFAULT 'unassigned';

UPDATE employees
SET department = DEFAULT
WHERE department IS NULL;

ALTER TABLE employees
ALTER COLUMN department
SET NOT NULL;

