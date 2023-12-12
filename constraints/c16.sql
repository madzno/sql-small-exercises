ALTER TABLE temperatures
ALTER COLUMN rainfall
TYPE numeric(6,3);

UPDATE temperatures
SET rainfall = round((rainfall / 25.4), 3);

UPDATE temperatures
SET rainfall = rainfall * 0.039;

