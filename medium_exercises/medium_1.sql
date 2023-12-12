SELECT state, count(state) FROM people
GROUP BY state
ORDER BY count(state) DESC
LIMIT 10;



