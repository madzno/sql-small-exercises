1. `createdb residents`
2. `psql -d residents < residents_with_data.sql`
3.
```sql
SELECT state, count(state) FROM people
GROUP BY state
ORDER BY count(state) DESC
LIMIT 10
```
4.
```sql
SELECT substr(email, strpos(email, '@') + 1) AS domain, count(id)
FROM people
GROUP BY domain
ORDER BY count DESC;
```
5. `DELETE FROM people WHERE id = 3399;`
6. `DELETE FROM people WHERE state = 'CA'`
7.
```sql
UPDATE people SET given_name = upper(given_name)
WHERE email LIKE '%teleworm.us';
```
8. `DELETE FROM people;`
