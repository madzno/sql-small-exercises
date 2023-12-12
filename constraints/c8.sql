ALTER TABLE films
ADD CONSTRAINT director_length
CHECK (length(director) >= 3 AND position(' ' IN director) > 0);

