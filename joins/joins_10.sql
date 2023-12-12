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
WHERE customers.email = 'gennaro.rath@mcdermott.co';

