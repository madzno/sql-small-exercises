SELECT sum(services.price) as gross
FROM customers_services
JOIN services
ON customers_services.service_id = services.id;
