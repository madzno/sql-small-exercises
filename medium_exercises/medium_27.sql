SELECT customers.name, STRING_AGG(services.description, ', ') AS services
FROM customers_services
FULL OUTER JOIN customers
ON customers_services.customer_id = customers.id
FULL OUTER JOIN services
ON customers_services.service_id = services.id
GROUP BY customers.name
HAVING customers.name IS NOT NULL;

SELECT customers.name,
       string_agg(services.description, ', ') AS services
FROM customers
LEFT OUTER JOIN customers_services
             ON customer_id = customers.id
LEFT OUTER JOIN services
             ON services.id = service_id
GROUP BY customers.id;

