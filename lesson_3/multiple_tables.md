1. `SELECT count(id) FROM tickets;`
2. `SELECT count(DISTINCT customer_id) FROM tickets;`
3.
```sql
SELECT round((count(DISTINCT tickets.customer_id) /
        count(DISTINCT customers.id)::decimal) * 100, 2) AS percent
FROM customers
LEFT JOIN tickets
ON customers.id = tickets.customer_id;
```
4.
```sql
SELECT events.name, count(tickets.event_id) AS popularity
FROM tickets
INNER JOIN events
ON events.id = tickets.event_id
GROUP BY events.name
ORDER BY popularity DESC;
```

5.
```sql
SELECT customers.id, customers.email, COUNT(DISTINCT tickets.event_id)
FROM customers
INNER JOIN tickets
ON tickets.customer_id = customers.id
GROUP BY customers.id
HAVING COUNT(DISTINCT tickets.event_id) = 3;
```

6.
```sql
SELECT events.name, events.starts_at, sections.name, seats.row,
seats.number
FROM tickets
JOIN customers
ON tickets.customer_id = customers.id
JOIN events
ON tickets.event_id = events.id
JOIN seats
ON tickets.seat_id = seats.id
JOIN sections
ON seats.section_id = sections.id
WHERE customers.email = 'gennaro.rath@mcdermott.co`;
```
