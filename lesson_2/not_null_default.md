1. `NULL`
2.
```sql
ALTER TABLE employees
ALTER COLUMN department
SET DEFAULT 'unassigned';

UPDATE employees
SET department = DEFAULT
WHERE department IS NULL;

ALTER TABLE employees
ALTER COLUMN department
SET NOT NULL;
```
3.
```sql
CREATE TABLE temperatures (
    date date NOT NULL,
    low integer NOT NULL,
    high integer NOT NULL
);
```

4.
```sql
INSERT INTO temperatures (date, low, high)
VALUES
('2016-03-01', 34, 43),
('2016-03-02', 32, 44),
('2016-03-03', 31, 47),
('2016-03-04', 33, 42),
('2016-03-05', 39, 46),
('2016-03-06', 32, 43),
('2016-03-07', 29, 32),
('2016-03-08', 23, 31),
('2016-03-09', 17, 28);
```

5.
```sql
SELECT date, round(((low + high) / 2), 1) AS mean_temperature
FROM temperatures
WHERE date >= '2016-03-02' AND
date <= '2016-03-08';
```

6.
```sql
ALTER TABLE temperatures
ADD COLUMN rainfall integer DEFAULT 0;
```

7.
```sql
UPDATE temperatures
SET rainfall = ((high + low) / 2) - 35
WHERE ((high + low) / 2) > 35;
```

8.
```sql
ALTER TABLE temperatures
ALTER COLUMN rainfall
TYPE numeric(6,3);

UPDATE temperatures
SET rainfall = round((rainfall / 25.4), 3);

UPDATE temperatures
SET rainfall = rainfall * 0.039;
```

9. `ALTER TABLE temperatures RENAME to weather;`

10. `\d weather`
