SELECT genre, count(genre) FROM films
GROUP BY genre
ORDER BY count(genre) DESC;
