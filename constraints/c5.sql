INSERT INTO films (title, year, genre, director, duration)
VALUES
('', 2022, 'action', 'steven spielberg', 120);

--- will result in:
-- ERROR:  new row for relation "films" violates check constraint "check_title_length"
-- DETAIL:  Failing row contains (, 2022, action, Steven Spielberg, 120).

