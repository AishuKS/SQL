/*
QUESTION: Retrieve employees whose salary is below the 
average for their job title.
*/
SELECT * FROM employees e WHERE salary<(
SELECT AVG(salary) FROM employees WHERE e.job_title=job_title);
