# SQL FUNCTIONS

### Aggregate Functions:
- COUNT(): Counts the number of rows.
- SUM(): Calculates the total sum of a numeric column.
- AVG(): Calculates the average of a numeric column.
- MAX(): Returns the maximum value in a column.
- MIN(): Returns the minimum value in a column.

### String Functions:
- CONCAT(): Concatenates two or more strings.
- SUBSTRING(): Extracts a substring from a string.
- UPPER(): Converts a string to uppercase.
- LOWER(): Converts a string to lowercase.

### Date Functions:
- NOW(): Returns the current date and time.
- DATEPART(): Extracts a part of a date (year, month, day, etc.).
- DATEDIFF(): Calculates the difference between two dates.

Example with Employee Table
| id | name         | salary | hire_date   |
|----|--------------|--------|-------------|
| 1  | Alice Smith  | 50000  | 2020-05-15  |
| 2  | Bob Johnson  | 60000  | 2019-03-20  |
| 3  | Carol White  | 55000  | 2021-07-12  |
| 4  | David Brown  | 70000  | 2018-10-05  |
| 5  | Eve Davis    | 52000  | 2022-01-25  |

##AGGREGATE FUNCTIONS
1. COUNT()
```sql
SELECT COUNT(*) FROM employees;
```
Output : 5

2. SUM()
```sql
SELECT SUM(salary) AS total_salary
FROM employees
WHERE hire_date > '2020-12-31';
```
| total_salary |
|--------------|
| 107000 |

3. AVG()
Find the average salary for employees hired in each year, but only show years where the average salary is greater than $55,000.
```sql
SELECT DATEPART(year, hire_date) AS hire_year, AVG(salary) AS avg_salary
FROM employees
GROUP BY DATEPART(year, hire_date)
HAVING AVG(salary) > 55000;
```

| hire_year | avg_salary |
|-----------|------------|
| 2019      | 60000      |
| 2018      | 70000      |

4. MAX()
Find the maximum salary for employees hired in each year.
```sql
SELECT DATEPART(year, hire_date) AS hire_year, MAX(salary) AS max_salary
FROM employees
GROUP BY DATEPART(year, hire_date);
```
| hire_year | max_salary |
|-----------|------------|
| 2018      | 70000      |
| 2019      | 60000      |
| 2020      | 50000      |
| 2021      | 55000      |
| 2022      | 52000      |

5. MIN()
Get the minimum salary for employees hired before 2021, grouped by hire year.
```sql
SELECT DATEPART(year, hire_date) AS hire_year, MIN(salary) AS min_salary
FROM employees
WHERE hire_date < '2021-01-01'
GROUP BY DATEPART(year, hire_date);
```
| hire_year | min_salary |
|-----------|------------|
| 2018      | 70000      |
| 2019      | 60000      |
| 2020      | 50000      |

6. Combining Multiple Aggregate Functions:
Find the total number of employees, the sum of their salaries, and the average salary, grouped by the year they were hired.
```sql
SELECT DATEPART(year, hire_date) AS hire_year,
       COUNT(*) AS employee_count,
       SUM(salary) AS total_salary,
       AVG(salary) AS avg_salary
FROM employees
GROUP BY DATEPART(year, hire_date);
```
| hire_year | employee_count | total_salary | avg_salary |
|-----------|----------------|--------------|------------|
| 2018      | 1              | 70000        | 70000      |
| 2019      | 1              | 60000        | 60000      |
| 2020      | 1              | 50000        | 50000      |
| 2021      | 1              | 55000        | 55000      |
| 2022      | 1              | 52000        | 52000      |

## STRING FUNCTIONS
1. CONCAT()
```sql
SELECT CONCAT('Employee: ', name) FROM employees;
```
|CONCAT('Employee: ', name)      |
|-------------------------|
| Employee: Alice Smith   |
| Employee: Bob Johnson   |
| Employee: Carol White   |
| Employee: David Brown   |
| Employee: Eve Davis     |
Explanation: It adds "Employee: " before each employee's name.

2. SUBSTRING():
```sql
SELECT SUBSTRING(name, 1, 3) FROM employees;
```
| SUBSTRING(name, 1, 3) |
|-----------|
| Ali       |
| Bob       |
| Car       |
| Dav       |
| Eve       |
Explanation: Extracts the first 3 characters from each employee's name.

3. UPPER():
```sql
SELECT UPPER(name) FROM employees;
```
| UPPER(name)     |
|------------------|
| ALICE SMITH      |
| BOB JOHNSON      |
| CAROL WHITE      |
| DAVID BROWN      |
| EVE DAVIS        |
Explanation: Converts all the names to uppercase letters.

4. LOWER():
```sql
SELECT LOWER(name) FROM employees;
```
| LOWER(name)     |
|------------------|
| alice smith       |
| bob johnson       |
| carol white       |
| david brown       |
| eve davis         |
Explanation: Converts all the names to lowercase letters.

##DATA FUNCTIONS
1. NOW():
```sql
SELECT NOW();
```
| NOW()                |
|----------------------|
| 2024-10-07 12:00:00  |
Explanation: Returns the current date and time when the query is run (in this case, "2024-10-07 12:00:00").

2. DATEPART():
```sql
SELECT DATEPART(year, hire_date) FROM employees;
```
| DATEPART(year, hire_date) |
|-----------------------------|
| 2020                        |
| 2019                        |
| 2021                        |
| 2018                        |
| 2022                        |
Explanation: Extracts the year each employee was hired.

3. DATEDIFF():
```sql
SELECT DATEDIFF(day, hire_date, NOW()) FROM employees;
```
| DATEDIFF(day, hire_date, NOW()) |
|-----------------------------------|
| 1236                              |
| 1667                              |
| 818                               |
| 1829                              |
| 621                               |
Explanation: Calculates the number of days since each employee was hired until today.
