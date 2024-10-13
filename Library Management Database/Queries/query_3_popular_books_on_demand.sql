/*
Question: Most Popular Books Based on Loans
*/

SELECT b.title, COUNT(l.loan_id) AS loan_count
FROM books b
JOIN loans l ON b.book_id = l.book_id
GROUP BY b.book_id
ORDER BY loan_count DESC
LIMIT 5;
