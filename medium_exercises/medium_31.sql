SELECT sum(services.price) as sum
FROM services
JOIN customers_services
ON customers_services.service_id = services.id
WHERE services.price > 100.00;

SELECT sum(services.price)
FROM customers
CROSS JOIN services
WHERE price > 100.00;
