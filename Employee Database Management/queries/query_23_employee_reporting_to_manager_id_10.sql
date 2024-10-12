 /*
QUESTION: List employees who report to a manager id 10;
*/

SELECT e.first_name, e.last_name FROM employees e JOIN departments d
ON e.department_id = d.department_id WHERE d.manager_id = 10;