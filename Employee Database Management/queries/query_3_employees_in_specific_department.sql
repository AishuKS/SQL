/*
QUESTION: Find employees in a SALES department.
*/

SELECT * FROM employees AS E JOIN departments AS D ON E.department_id = D.department_id
WHERE D.department_name = 'SALES';