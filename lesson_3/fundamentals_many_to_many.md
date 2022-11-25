1.
```sql
createdb billing
psql -d billing

CREATE TABLE customers (
  id serial PRIMARY KEY,
  name text NOT NULL,
  payment_token char(8) NOT NULL UNIQUE CHECK (payment_token ~ '^[A-Z]{8}$')
);

CREATE TABLE services (
  id serial PRIMARY KEY,
  description text NOT NULL,
  price numeric(10, 2) NOT NULL CHECK (price >= 0.00)
);

INSERT INTO customers (name, payment_token)
VALUES
('Pat Johnson', 'XHGOAHEQ'), ('Nancy Monreal', 'JKWQPJKL'),
('Lynn Blake', 'KLZXWEEE'), ('Chen Ke-Hua', 'KWETYCVX'),
('Scott Lakso', 'UUEAPQPS'), ('Jim Pornot', 'XKJEYAZA');

INSERT INTO services (description, price)
VALUES
('Unix Hosting', 5.95), ('DNS', 4.95),
('Whois Registration', 1.95), ('High Bandwidth', 15.00),
('Buisness Support', 250.00), ('Dedicated Hosting', 50.00),
('Bulk Email', 250.00), ('One-to-one Training', 999.00);

CREATE TABLE customers_services (
  id serial PRIMARY KEY,
  customer_id integer REFERENCES customers (id) ON DELETE CASCADE NOT NULL,
  service_id integer REFERENCES services (id) NOT NULL,
  UNIQUE (customer_id, service_id)
);

INSERT INTO customers_services
```

2.
```sql
SELECT DISTINCT customers.*
FROM customers_services
JOIN customers
ON customers_services.customer_id = customers.id;
```

3.
```sql
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
```

4.
```sql
SELECT DISTINCT services.description
FROM customers_services
RIGHT OUTER JOIN services
ON customers_services.service_id = services.id
WHERE service_id IS NULL;
```

5.
```sql
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
```

6.
```sql
SELECT services.description, count(customers.id) AS count
FROM customers_services
JOIN customers
ON customers_services.customer_id = customers.id
JOIN services
ON customers_services.service_id = services.id
GROUP BY services.description
HAVING count(customers.id) >= 3;
```

7.
```sql
SELECT sum(services.price) as gross
FROM customers_services
JOIN services
ON customers_services.service_id = services.id;
```

8.
```sql
INSERT INTO customers (name, payment_token)
VALUES ('John Doe', 'EYODHLCN');

INSERT INTO customers_services (customer_id, service_id)
VALUES (7, 1), (7, 2), (7, 3);
```

9.
```sql
SELECT sum(services.price) as sum
FROM services
JOIN customers_services
ON customers_services.service_id = services.id
WHERE services.price > 100.00;

SELECT sum(services.price)
FROM customers
CROSS JOIN services
WHERE price > 100.00;

```

10.
```sql
DELETE FROM customers_services WHERE service_id = 7;
DELETE FROM customers WHERE id = 4;
DELETE FROM services WHERE id = 7;
```
