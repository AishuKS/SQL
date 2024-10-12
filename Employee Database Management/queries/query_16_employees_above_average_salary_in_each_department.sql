/*
QUESTION: Retrieve employees with salaries above the average 
salary in their department.
*/

SELECT * FROM employees E JOIN departments D ON E.department_id = 
D.department_id WHERE E.salary >(SELECT AVG(salary) FROM employees
WHERE E.department_id = D.department_id);
