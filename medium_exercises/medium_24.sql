SELECT DISTINCT customers.*
FROM customers_services
JOIN customers
ON customers_services.customer_id = customers.id;
