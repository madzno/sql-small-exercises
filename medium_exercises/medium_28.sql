SELECT services.description, count(customers.id) AS count
FROM customers_services
JOIN customers
ON customers_services.customer_id = customers.id
JOIN services
ON customers_services.service_id = services.id
GROUP BY services.description
HAVING count(customers.id) >= 3;

