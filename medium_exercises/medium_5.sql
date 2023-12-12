ALTER TABLE planets
ADD COLUMN stars_id integer NOT NULL
REFERENCES stars (id);

