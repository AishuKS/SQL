/*
QUESTION: Find employees by gender.
*/

SELECT gender, COUNT(*) FROM employees GROUP BY gender;
