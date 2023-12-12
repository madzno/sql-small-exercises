SELECT books.id, books.author, STRING_AGG(categories.name, ' , ') AS categories
FROM books_categories
JOIN books
ON books_categories.book_id = books.id
JOIN categories
ON books_categories.category_id = categories.id
GROUP BY books.id
ORDER BY books, id;

