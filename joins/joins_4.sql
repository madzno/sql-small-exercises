SELECT films.title, directors.name
FROM films_directors
JOIN films
ON films_directors.film_id = films.id
JOIN directors
ON films_directors.director_id = directors.id
ORDER BY films.title;