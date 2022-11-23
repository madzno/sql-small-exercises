1.
```sql
createdb extrasolar
psql -d extrasolar

CREATE TABLE stars (
  id serial PRIMARY KEY,
  name varchar(25) UNIQUE NOT NULL,
  distance integer NOT NULL CHECK (distance > 0),
  spectral_type char(1),
  companions integer NOT NULL CHECK (companions >= 0)
  );

CREATE TABLE planets (
  id serial PRIMARY KEY,
  designation char(1) UNIQUE,
  mass integer
);
```

2.
```sql
ALTER TABLE planets
ADD COLUMN stars_id integer NOT NULL
REFERENCES stars (id);
```

3.
```sql
ALTER TABLE stars
ALTER COLUMN name TYPE varchar(50);
```

4.
```sql
ALTER TABLE stars
ALTER COLUMN distance TYPE numeric;
```

5.
```sql
ALTER TABLE stars
ADD CHECK (spectral_type IN ('O', 'B', 'A', 'F', 'G', 'K', 'M'));

ALTER TABLE stars
ALTER COLUMN spectral_type
SET NOT NULL;
```

6.
```sql
CREATE TYPE spectral_type_enum AS ENUM ('O', 'B', 'A', 'F', 'G', 'K', 'M');

ALTER TABLE stars
ALTER COLUMN spectral_type
TYPE spectral_type_enum
USING spectral_type::spectral_type_enum;
```

7.
```sql
ALTER TABLE planets
ALTER COLUMN mass TYPE numeric,
ALTER COLUMN mass SET NOT NULL,
ADD CHECK (mass > 0.0),
ALTER COLUMN designation SET NOT NULL;
```

8.
```sql
ALTER TABLE planets
ADD COLUMN semi_major_axis numeric NOT NULL;
```

9.
```sql
CREATE TABLE moons (
  id serial PRIMARY KEY,
  designation integer NOT NULL CHECK (designation > 0),
  semi_major_axis numeric CHECK (semi_major_axis > 0.0),
  mass numeric CHECK (mass > 0.0),
  planet_id integer NOT NULL REFERENCES planets(id)
);
```

10.
```sql
\c sql-course
DROP DATABASE extrasolar;
```
