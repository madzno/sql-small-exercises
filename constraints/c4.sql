ALTER TABLE films
ADD CONSTRAINT check_title_length
CHECK (length(title) >= 1);

