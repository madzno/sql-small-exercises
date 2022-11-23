1.
```sql
INSERT INTO calls ("when", duration, contact_id)
VALUES ('2016-01-18 14:47:00', 632, 6);
```

2.
```sql
SELECT calls.when, calls.duration, contacts.first_name
FROM calls
JOIN contacts
ON calls.contact_id = contacts.id
WHERE contacts.first_name != 'William' AND contacts.last_name != 'Swift';
```

3.
```sql
INSERT INTO contacts (first_name, last_name, number)
VALUES ('Merve', 'Elk', 6343511126),
('Sawa', 'Fyodorov', 6125594874);

INSERT INTO calls ("when", duration, contact_id)
('2016-01-17 11:52:00, 175, 27)
('2016-01-18 21:22:00, 79, 28);
```

4.
```sql
ALTER TABLE contacts
ADD CONSTRAINT unique_number
UNIQUE (number);
```

5.
```sql
INSERT INTO contacts (first_name, last_name, number)
VALUES ('maddy', 'w', 7204890809);
---
ERROR:  duplicate key value violates unique constraint "unique_number"
DETAIL:  Key (number)=(7204890809) already exists.
```

6. Because it is a reserved word in sql.
