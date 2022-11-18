2. `SELECT * FROM films;`
3. `SELECT * FROM films WHERE length(title) < 12;`
4.
```sql
ALTER TABLE films
ADD COLUMN director varchar(100);

ALTER TABLE films
ADD COLUMN duration integer;
```
5.
```sql
UPDATE films
  SET director = 'John McTiernan', duration = 132
  WHERE title = 'Die Hard';

UPDATE films
  SET director = 'Michael Curtiz', duration = 102
  WHERE title = 'Casablanca';

UPDATE films
  SET director = 'Francis Ford Coppola', duration = 113
  WHERE title = 'The Conversation';
```
6.
```sql
INSERT INTO films (title, year, genre, director, duration)
VALUES
('1984', 1956, 'scifi', 'Michael Anderson', 90),
('Tinker Tailor Soldier Spy', 2011, 'espionage', 'Tomas Alfredson', 127),
('The Birdcage', 1996, 'comedy', 'Mike Nichols', 118);
```
7.
```sql
SELECT title, 2022 - year AS age,
FROM films
ORDER BY age DESC;
```
8.
```sql
SELECT title, duration FROM films
WHERE duration > 120
ORDER BY duration DESC;
```
9.
```sql
SELECT title FROM films
ORDER BY duration DESC
LIMIT 1;
```
