/*
QUESTION: Get employees older than 30
*/

SELECT first_name, last_name, emp_id FROM employees
WHERE YEAR(CURDATE()) - YEAR(dob) > 30;
