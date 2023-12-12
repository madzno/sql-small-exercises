SELECT DISTINCT customers.*
FROM customers
LEFT JOIN customers_services
ON customers_services.customer_id = customers.id
WHERE service_id IS NULL;

SELECT DISTINCT customers.*, services.*
FROM customers_services
FULL OUTER JOIN customers
ON customers_services.customer_id = customers.id
FULL OUTER JOIN services
ON customers_services.service_id = services.id
WHERE service_id IS NULL;

