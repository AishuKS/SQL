 /*
QUESTION: Get employees whose salary 
exceeds the maximum salary for their position.
*/

SELECT * FROM employees e JOIN positions p ON e.position_id = p.position_id
WHERE e.salary > p.max_salary;
