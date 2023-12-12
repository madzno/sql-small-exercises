ALTER TABLE birds
ADD CONSTRAINT check_positive_age
CHECK (age > 0);

