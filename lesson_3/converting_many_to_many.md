1. `psql -d sql-course < films7.sql`
2.
```sql
CREATE TABLE films_directors (
  id serial PRIMARY KEY,
  film_id integer REFERENCES films(id),
  director_id integer REFERENCES directors(id)
);
```

3.
```sql
INSERT INTO films_directors (film_id, director_id)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 3),
(8, 7),
(9, 8),
(10, 4);
```

4.
```sql
ALTER TABLE films
DROP COLUMN director_id;
```

5.
```sql
SELECT films.title, directors.name
FROM films_directors
JOIN films
ON films_directors.film_id = films.id
JOIN directors
ON films_directors.director_id = directors.id
ORDER BY films.title;
```

6.
```sql
INSERT INTO films (title, year, genre, duration)
VALUES
('Fargo', 1996, 'comedy', 98),
('No Country For Old Men', 2007, 'western', 122),
('Sin City', 2005, 'crime', 124),
('Spy Kids', 2001, 'scifi', 88);

INSERT INTO directors (name)
VALUES
('Joel Coen'), ('Ethan Coen'), ('Frank Miller'), ('Robert Rodriguez');

INSERT INTO films_directors (film_id, director_id)
VALUES (11, 9), (12, 9), (12, 10), (13, 11), (13, 12), (14, 12);

```

7.
```sql
SELECT directors.name AS director, count(films_directors.director_id) AS films
FROM films_directors
JOIN directors
ON films_directors.director_id = directors.id
GROUP BY director
ORDER BY films DESC, director;
```
