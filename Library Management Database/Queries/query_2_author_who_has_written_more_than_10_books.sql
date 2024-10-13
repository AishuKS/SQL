/*
Question: List of Authors Who Have Written More Than 5 Books
*/

SELECT a.name, COUNT(b.book_id) AS book_count
FROM authors a
JOIN books b ON a.author_id = b.author_id
GROUP BY a.author_id
HAVING COUNT(b.book_id) > 5;