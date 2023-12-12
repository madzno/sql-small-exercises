SELECT directors.name AS director, count(films_directors.director_id) AS films
FROM films_directors
JOIN directors
ON films_directors.director_id = directors.id
GROUP BY director
ORDER BY films DESC, director;
