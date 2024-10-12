/*
QUESTION: Get employees from position 'Software Engineer'
*/

SELECT * FROM employees E JOIN positions P ON E.position_id = P.position_id
WHERE P.position_name = 'Software Engineer';