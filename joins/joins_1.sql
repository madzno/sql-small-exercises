CREATE TABLE films_directors (
  id serial PRIMARY KEY,
  film_id integer REFERENCES films(id),
  director_id integer REFERENCES directors(id)
);
