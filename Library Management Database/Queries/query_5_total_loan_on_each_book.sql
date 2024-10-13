/*
Question: Total loan on each book
*/

SELECT b.title, COUNT(l.loan_id) AS total_loans
FROM books b
LEFT JOIN loans l ON b.book_id = l.book_id
GROUP BY b.book_id;



