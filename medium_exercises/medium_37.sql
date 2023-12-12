SELECT categories.name, COUNT(books.id) AS book_count,
STRING_AGG(books.title, ' , ' AS book_titles
FROM books_categories
JOIN books
ON books_categories.book_id = books.id
JOIN categories
ON books_categories.category_id = categories.id
GROUP BY categories.name
ORDER BY categories.name;
