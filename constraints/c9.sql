UPDATE films
SET director = 'Johnny'
WHERE title = 'Die Hard';

--- will result inn
-- ERROR:  new row for relation "films" violates check constraint "director_length"
-- DETAIL:  Failing row contains (Die Hard, 1988, action, Johnny, 132).
