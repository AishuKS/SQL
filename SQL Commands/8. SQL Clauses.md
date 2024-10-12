# SQL Clauses 

1. GROUP BY
2. HAVING
3. ORDER BY
4. JOIN
  - INNER JOIN
  - LEFT JOIN
  - RIGHT JOIN
  - FULL JOIN
  - CROSS JOIN
5. UNION
6. UNION ALL


## Examples with employee database

1. Employee Table
|EmpID|	Name|	DepartmentID	|Salary|
|-------|---------|--------------|--------|
|1|	John|	10|	50000|
|2	|Sarah|	20|	60000|
|3	|Mike|	10	|55000|
|4	|Jessica	|30	|70000|
|5	|James	|NULL	|40000|

3. Department Table
|DepartmentID	|DepartmentName|
|-------|---------|
|10|	HR|
|20	|IT|
|30	|Finance|
|40|	Marketing|

1. GROUP BY
Groups rows that have the same values in specified columns.

Example: Find the total salary paid in each department.
```sql
SELECT DepartmentID, SUM(Salary) AS TotalSalary
FROM Employee
GROUP BY DepartmentID;
```

|DepartmentID|	TotalSalary|
|-------|---------|
|10|	105000|
|20	|60000|
|30	|70000|
|NULL|	40000|

2. HAVING
Filters groups based on a condition. It is used with GROUP BY.

Example: Find departments where the total salary exceeds 100,000.
```sql
SELECT DepartmentID, SUM(Salary) AS TotalSalary
FROM Employee
GROUP BY DepartmentID
HAVING SUM(Salary) > 100000;
```

|DepartmentID|	TotalSalary|
|-------|---------|
|10|	105000|

3. ORDER BY
Sorts the result set based on specified columns.

Example: Get the list of employees sorted by salary in descending order.
```sql
SELECT Name, Salary
FROM Employee
ORDER BY Salary DESC;
```

|Name	|Salary|
|-------|---------|
|Jessica|	70000|
|Sarah	|60000|
|Mike	|55000|
|John	|50000|
|James|	40000|

4. JOIN
Combines rows from two or more tables based on related columns.

Example: Join Employee and Department tables to display each employee’s department.
```sql
SELECT e.Name, d.DepartmentName
FROM Employee e
JOIN Department d ON e.DepartmentID = d.DepartmentID;
```

|Name|	DepartmentName|
|-------|---------|
|John	|HR|
|Sarah|	IT|
|Mike	|HR|
|Jessica	|Finance|

5. INNER JOIN
Returns only matching rows from both tables.

Example: Show employees and their departments, but only those who belong to a department.
```sql
SELECT e.Name, d.DepartmentName
FROM Employee e
INNER JOIN Department d ON e.DepartmentID = d.DepartmentID;
```

|Name|	DepartmentName|
|-------|---------|
|John	|HR|
|Sarah|	IT|
|Mike	|HR|
|Jessica|	Finance|

6. LEFT JOIN
Returns all rows from the left table and matched rows from the right table. Unmatched rows will have NULL values.

Example: Show all employees and their departments, even if some employees don't have a department.
```sql
SELECT e.Name, d.DepartmentName
FROM Employee e
LEFT JOIN Department d ON e.DepartmentID = d.DepartmentID;
```

|Name|	DepartmentName|
|-------|---------|
|John|	HR|
|Sarah	|IT|
|Mike	HR|
|Jessica|	Finance|
|James	|NULL|

7. RIGHT JOIN
Returns all rows from the right table and matched rows from the left table. Unmatched rows will have NULL values.

Example: Show all departments and the employees in them, even if some departments don't have employees.
```sql
SELECT e.Name, d.DepartmentName
FROM Employee e
RIGHT JOIN Department d ON e.DepartmentID = d.DepartmentID;
```

|Name|	DepartmentName|
|-------|---------|
|John|	HR|
|Mike	|HR|
|Sarah|	IT|
|Jessica	|Finance|
|NULL	|Marketing|

8.  FULL JOIN
Returns all rows when there is a match in either left or right table.

Example: Show all employees and departments, including employees without departments and departments without employees.
```sql
SELECT e.Name, d.DepartmentName
FROM Employee e
FULL JOIN Department d ON e.DepartmentID = d.DepartmentID;
```

|Name|	DepartmentName|
|-------|---------|
|John|	HR|
|Mike|	HR|
|Sarah|	IT|
|Jessica|	Finance|
|James	|NULL|
|NULL	|Marketing|

9. CROSS JOIN
Returns the Cartesian product of two tables (every row from the first table is combined with every row from the second table).

Example: Create a pairing of each employee with every department (Cartesian product).
```sql
SELECT e.Name, d.DepartmentName
FROM Employee e
CROSS JOIN Department d;
```

|Name|	DepartmentName|
|-------|---------|
|John	|HR|
|John	|IT|
|John	|Finance|
|John	|Marketing|
|Sarah	|HR|
|...	|...|
|James	|Marketing|

10. UNION
Combines the result sets of two or more SELECT queries and removes duplicates.

Example: Get a list of all department names and employee names.
```sql
SELECT Name AS EntityName
FROM Employee
UNION
SELECT DepartmentName AS EntityName
FROM Department;
```

|EntityName|
|-------|
|John|
|Sarah|
|Mike|
|Jessica|
|James|
|HR|
|IT|
|Finance|
|Marketing|

11. UNION ALL
Combines the result sets of two or more SELECT queries and includes duplicates.

Example: Get a list of all department names and employee names, including duplicates if any exist.
```sql
SELECT Name AS EntityName
FROM Employee
UNION ALL
SELECT DepartmentName AS EntityName
FROM Department;
```

|EntityName|
|-------|
|John|
|Sarah|
|Mike|
|Jessica|
|James|
|HR|
|IT|
|Finance|
|Marketing|
