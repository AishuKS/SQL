/*
QUESTION: Find departments where the total salary exceeds 50000
*/

SELECT D.department_name, SUM(E.salary) AS Total_Salary FROM departments D 
JOIN employees E ON D.department_id
 = E.department_id GROUP BY D.department_name 
 HAVING SUM(E.salary) > 50000;
 