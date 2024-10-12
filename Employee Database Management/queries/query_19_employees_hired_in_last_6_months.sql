/*
QUESTION: Find employees hired in the last 6 months.
*/
SELECT * FROM employees 
WHERE hire_date>= DATE_SUB(CURDATE(), INTERVAL 6 MONTH);
