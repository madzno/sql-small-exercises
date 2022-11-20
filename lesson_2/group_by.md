1. `psql -d sql-course < films4.sql`
2.
```sql
INSERT INTO films (title, year, genre, director, duration)
VALUES
('Wyane''s World', 1992, 'comedy', 'Penelope Spheeris', 95),
('Bourne Ientity', 2002, 'espinoage', 'Doug Liman', 118);
```
3. `SELECT DISTINCT genre FROM films;`
4. `SELECT genre FROM films GROUP BY genre;`
5. `SELECT round(avg(duration)) FROM films;`
6. `SELECT genre, round(avg(duration)) FROM films GROUP BY genre;`
7.
```sql
SELECT round(year, -1) AS decade, round(avg(duration)) AS average_duration
FROM films
GROUP BY decade
ORDER BY decade;
```
8. `SELECT * FROM films WHERE director LIK 'John%';`
9.
```sql
SELECT genre, count(genre) FROM films
GROUP BY genre
ORDER BY count(genre) DESC;
```
10.
```sql
SELECT round(year, -1) AS decade, genre, string_agg(title, ',') AS films
FROM films
GROUP BY decade, genre
ORDER BY decade, genre;
```
11.
```sql
SELECT genre, sum(duration) AS total_duration
FROM films
GROUP BY genre
ORDER BY total_duration, genre;
```
