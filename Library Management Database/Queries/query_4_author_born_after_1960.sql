/*
Question: Author born after 1960
*/

SELECT DISTINCT a.name
FROM authors a
JOIN books b ON a.author_id = b.author_id
WHERE a.birth_year > 1960;