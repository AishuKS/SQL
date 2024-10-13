/*
Question: Total Number of Books by Genre
*/

SELECT genre, COUNT(*) FROM books GROUP BY genre;
