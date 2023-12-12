SELECT round(year, -1) AS decade, round(avg(duration)) AS average_duration
FROM films
GROUP BY decade
ORDER BY decade;

