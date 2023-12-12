SELECT round((count(DISTINCT tickets.customer_id) /
        count(DISTINCT customers.id)::decimal) * 100, 2) AS percent
FROM customers
LEFT JOIN tickets
ON customers.id = tickets.customer_id;

