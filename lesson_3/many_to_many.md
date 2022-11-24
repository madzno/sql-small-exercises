1.
```sql
ALTER TABLE books_categories
DROP CONSTRAINT "books_categories_book_id_fkey";

ALTER TABLE books_categories
DROP CONSTRAINT "books_categories_category_id_fkey";

ALTER TABLE books_categories
ALTER COLUMN book_id SET NOT NULL,
ALTER COLUMN category_id SET NOT NULL;

ALTER TABLE books_categories
ADD CONSTRAINT "books_categories_book_id_fkey"
FOREIGN KEY ("book_id")
REFERENCES books(id)
ON DELETE CASCADE;

ALTER TABLE books_categories
ADD CONSTRAINT "books_categories_category_id_fkey"
FOREIGN KEY ("category_id")
REFERENCES category(id)
ON DELETE CASCADE;
```

2.
```sql
SELECT books.id, books.author, STRING_AGG(categories.name, ' , ') AS categories
FROM books_categories
JOIN books
ON books_categories.book_id = books.id
JOIN categories
ON books_categories.category_id = categories.id
GROUP BY books.id
ORDER BY books, id;
```

3.
```sql
ALTER TABLE books ALTER COLUMN title TYPE text;

INSERT INTO books (title, author)
VALUES
('Sally Ride: America''s First Woman in Space', 'Lynn Sherr'),
('Jane Eyre', 'Charlotte Bronte'),
('Vij''s: Elegant and Inspired Indian Cuisine', 'Meeru Dhalwala and Vikram Vij');

INSERT INTO categories (name)
VALUES ('Space Exploration'), ('Cookbook'), ('South Asia');

INSERT INTO books_categoires (book_id, category_id)
VALUES
(4, 5), (4, 1), (4, 7),
(5, 2), (5, 4),
(6, 8), (6,9);
```

4.
```sql
ALTER TABLE books_categories ADD UNIQUE (book_id, category_id);
```

5.
```sql
SELECT categories.name, COUNT(books.id) AS book_count,
STRING_AGG(books.title, ' , ' AS book_titles
FROM books_categories
JOIN books
ON books_categories.book_id = books.id
JOIN categories
ON books_categories.category_id = categories.id
GROUP BY categories.name
ORDER BY categories.name;
```
