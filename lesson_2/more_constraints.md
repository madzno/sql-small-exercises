1. `psql -d sql-course < films_data.sql`
2.
```sql
ALTER TABLE films ALTER COLUMN year SET NOT NULL;
ALTER TABLE films ALTER COLUMN title SET NOT NULL;
ALTER TABLE films ALTER COLUMN genre SET NOT NULL;
ALTER TABLE films ALTER COLUMN director SET NOT NULL;
ALTER TABLE films ALTER COLUMN duration SET NOT NULL;
```
3. We will see `not null` in the `nullable` column (`modifiers` on earlier versions)
4.
```sql
ALTER TABLE films
ADD CONSTRAINT unique_title UNIQUE (title);
```
5. It will appear as an `Index` at the bottom of the table
6.
```sql
ALTER TABLE films
DROP CONSTRAINT unique_title;
```
7.
```sql
ALTER TABLE films
ADD CONSTRAINT check_title_length
CHECK (length(title) >= 1);
```
8.
```sql
INSERT INTO films (title, year, genre, director, duration)
VALUES
('', 2022, 'action', 'steven spielberg', 120);

---
ERROR:  new row for relation "films" violates check constraint "check_title_length"
DETAIL:  Failing row contains (, 2022, action, Steven Spielberg, 120).
```

9. It is desplayed as a `check_constraint` at the bottom of the table.
10.
```sql
ALTER TABLE films
DROP CONSTRAINT check_title_length;
```
11.
```sql
ALTER TABLE films
ADD CONSTRAINT year_range
CHECK (year BETWEEN 1990 AND 2100);
```

12.  It appears as a `check_constraint` at the bottom of the table.

13.
```sql
ALTER TABLE films
ADD CONSTRAINT director_length
CHECK (length(director) >= 3 AND position(' ' IN director) > 0);
```

14. It appears as a `check_constraint` at the bottom of the table.
15.
```sql
UPDATE films
SET director = 'Johnny'
WHERE title = 'Die Hard';

---
ERROR:  new row for relation "films" violates check constraint "director_length"
DETAIL:  Failing row contains (Die Hard, 1988, action, Johnny, 132).
```
16.
1. Add a `NOT NULL` constraint - this will prevent any `NULL` values from being entered into a particular column
2. Add a `CHECK` constraint - this will assure that data entered into a certain column matches a certain condition
3. Add a `UNIQUE` constraint - this will assure that the data in a column is unique (no duplicate values)
4. setting the `data type` of a column allows only a certain data type to be entered into it
5. Length limitation of the `data type` will also restrict the data for String type columns

18. `/d $table_name`
