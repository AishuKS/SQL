/*
QUESTION: Count employees by department.
*/

SELECT D.department_name, COUNT(E.emp_id) AS Employee_Count_By_Department 
FROM employees E JOIN departments D ON E.department_id = D.department_id
GROUP BY department_name;