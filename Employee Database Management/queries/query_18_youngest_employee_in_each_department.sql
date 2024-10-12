 /*
QUESTION: List the youngest employee in each department.
*/
SELECT d.department_name, MIN(e.dob) AS youngest_dob
FROM employees e
JOIN departments d ON e.department_id = d.department_id
GROUP BY d.department_name;
