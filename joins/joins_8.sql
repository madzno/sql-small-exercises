SELECT events.name, count(tickets.event_id) AS popularity
FROM tickets
INNER JOIN events
ON events.id = tickets.event_id
GROUP BY events.name
ORDER BY popularity DESC;

