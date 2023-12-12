CREATE TABLE reviews (
  id serial PRIMARY KEY,
  body text NOT NULL,
  product_id integer REFERENCES products(id),
);

