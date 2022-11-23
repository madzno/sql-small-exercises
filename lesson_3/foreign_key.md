1. `psql -d sql-course < orders_products1.sql`
2.
```sql
ALTER TABLE orders
ADD CONSTRAINT orders_product_id_fkey
FOREIGN KEY (product_id)
REFERENCES products(id);
```
3.
```sql
INSERT INTO products (name)
VALUES ('small bolt'), ('large bolt');

INSERT INTO orders (product_id, quantity)
VALUES (1, 10), (1, 25), (2, 15);
```
4.
```sql
SELECT orders.quantity, products.name
FROM orders
JOIN products
ON orders.product_id = products.id;
```
5. Yes, foreign keys do not automatically have `NOT NULL` constraints.
```sql
INSERT INTO orders (quantity) VALUES (20);

sql-course=# SELECT * FROM orders;
 id | product_id | quantity
----+------------+----------
  1 |          1 |       10
  2 |          1 |       25
  3 |          2 |       15
  4 |            |       20
(4 rows)
```

6.
```sql
ALTER TABLE orders
ALTER COLUMN product_id
SET NOT NULL;

-----
ERROR:  column "product_id" of relation "orders" contains null values
```

7.
```sql
DELETE FROM orders WHERE product_id IS NULL;

ALTER TABLE orders
ALTER COLUMN product_id
SET NOT NULL;
```

8.
```sql
CREATE TABLE reviews (
  id serial PRIMARY KEY,
  body text NOT NULL,
  product_id integer REFERENCES products(id),
);
```

9.
```sql
INSERT INTO reviews (body, product_id)
VALUES
('a little small', 1),
('very round!', 1),
('could have been smaller', 2);
```

10. False, a foreign key does not automatically add a `NOT NULL` constraint
