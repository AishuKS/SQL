/*
QUESTION: Retrieve all departments with their managers.
*/

SELECT D.department_id, D.department_name, E.first_name, E.last_name FROM departments D
JOIN employees E ON D.manager_id = E.emp_id;
