# Easy 1 Quesions

## Easy 1.1
- `createdb animals`
- `CREATE DATABASE animals;`

## Easy 1.2

```sql
CREATE TABLE birds (
  id serial PRIMARY KEY,
  name varchar(25),
  age integer,
  species varchar(15)
);
```
## Easy 1.3

```sql
INSERT INTO birds (name, age, species)
  VALUES ('Charlie', 3, 'Finch'),
  ('Allie', 5, 'Owl'),
  ('Jennifer', 3, 'Magpie'),
  ('Jamie', 4, 'Owl'),
  ('Roy', 8, 'Crow');
```

## Easy 1.4

- `SELECT * FROM birds`

## Easy 1.5

- `SELECT * FROM birds WHERE age < 5;`

## Easy 1.6

```sql
UPDATE birds
SET species = 'Hawk'
WHERE name = 'Jamie';
```

```sql
UPDATE birds
SET species = 'Hawk'
WHERE name = 'Jamie';
```

## Easy 1.7

- `DELETE FROM birds WHERE species = 'Finch' AND age = 3;`

## Easy 1.8

```sql
ALTER TABLE birds
ADD CONSTRAINT check_positive_age
CHECK (age > 0);
```

## Easy 1.9

`DROP TABLE birds;`

## Easy 1.10

- `dropdb animals`
- `DROP DATABASE animals;`
