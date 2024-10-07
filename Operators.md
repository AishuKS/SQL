# SQL Operators
## Operators Overview
1. Logical Operator 
- **Addition**: `+`
- **Subtraction**: `-`
- **Multiplication**: `*`
- **Division**: `/`
- **Modulus**: `%`

2. Comparison Operators 
- **Equal**: `=`
- **Not equal**: `!=` or `<>`
- **Greater than**: `>`
- **Less than**: `<`
- **Greater than or equal to**: `>=`
- **Less than or equal to**: `<=`

3. Logical Operators
- **AND**: Combines multiple conditions; returns true if all conditions are true.
- **OR**: Returns true if at least one of the conditions is true.
- **NOT**: Reverses the result of a condition.

4. Special Operators
- **BETWEEN**: Filters results within a specified range (inclusive).
- **LIKE**: Searches for a specified pattern in a column.
- **IN**: Checks if a value matches any value in a list or subquery.
- **IS NULL**: Checks for NULL values in a column.
- **EXISTS**: Tests for the existence of any record in a subquery.

## Example Using an Employee Database

| **id** | **name** | **age** | **department** | **salary** | **hire_date** |
|------------------|----------------|----------------|--------------------|----------------|------------|
| 1             | Alice           | 30            | HR                  | 60000     | 2020-01-15   |
| 2             | Bob           | 25            | IT                  | 55000     | 2021-03-22   |
| 3             | Charlie           | 35            | IT                  | 70000     | 2019-07-10   |
| 4             | David           | 28            | Finance                  | 45000     | 2022-02-01   |
| 5             | Eva           | 42            | HR                  | 80000     | 2018-05-30   |

### 1. Arithmetic Operators
Addition (+): Used to add numbers together.
```sql
SELECT name, salary + 5000 AS increased_salary FROM employees;
```
| **name** | **increased_salary** |
|----------------|------------|
|Alice|	65000|
|Bob|	60000|
|Charlie|	75000|
|David|	50000|
|Eva|	85000|

Subtraction (-): Decreases each employee's salary by $10000.
```sql
SELECT name, salary - 10000 AS reduced_salary FROM employees;
```
| **name** | **reduced_salary** |
|----------------|------------|
|Alice|	50000|
|Bob|	45000|
|Charlie|	60000|
|David|	35000|
|Eva|	70000|

Multiplication (*): Applies a 10% bonus to each employee's salary.
```sql
Multiplication (*): Applies a 10% bonus to each employee's salary
```
| **name** | **salary_with_bonus** |
|----------------|------------|
|Alice|	66000|
|Bob|	60500|
|Charlie|	77000|
|David|	49500|
|Eva|	88000|

Division (/): Shows the employee's salary in thousands.
```sql
SELECT name, salary / 1000 AS salary_in_thousands FROM employees;
```
| **name** | **salary_in_thousands** |
|----------------|------------|
|Alice|	60|
|Bob|	55|
|Charlie|	70|
|David|	45|
|Eva|	80|

Modulus (%): Shows the remainder when salary is divided by 10000
```sql
SELECT name, salary % 10000 AS remainder FROM employees;
```
| **name** | **	remainder** |
|----------------|------------|
|Alice|	0|
|Bob|	5000|
|Charlie|	0|
|David|	5000|
|Eva|	0|

### 2. Comparison Operators
Equal (=): Selects employees in the IT department
```sql
SELECT * FROM employees WHERE department = 'IT';
```
| **id** | **name** | **age** | **department** | **salary** | **hire_date** |
|2|	Bob|	25|	IT|	55000|	2021-03-22|
|3	|Charlie	|35|	IT	|70000|	2019-07-10|

Not Equal (!=): Selects employees whose age is not 30.
```sql
SELECT * FROM employees WHERE age != 30;
```
| **id** | **name** | **age** | **department** | **salary** | **hire_date** |
|2	|Bob|	25|	IT|	55000|	2021-03-22|
|3	|Charlie|	35|	IT	|70000|	2019-07-10|
|4	|David|	28	|Finance	|45000	|2022-02-01|
|5|	Eva	|42	|HR	|80000	|2018-05-30|

Greater Than (>): Selects employees earning more than $60,000.
```sql
SELECT * FROM employees WHERE salary > 60000;
```
| **id** | **name** | **age** | **department** | **salary** | **hire_date** |
|3	|Charlie|	35	|IT|	70000|	2019-07-10|
|5	|Eva|	42|	HR|	80000	|2018-05-30|

Less Than (<): Selects employees younger than 30.
```sql
SELECT * FROM employees WHERE age < 30;
```

| **id** | **name** | **age** | **department** | **salary** | **hire_date** |
|2|	Bob	|25|	IT	|55000|	2021-03-22|
|4|	David|	28|	Finance|	45000	|2022-02-01|

Greater Than or Equal To (>=): Selects employees earning $60,000 or more.
```sql
SELECT * FROM employees WHERE salary >= 60000;
```
| **id** | **name** | **age** | **department** | **salary** | **hire_date** |
|1	|Alice	|30|	HR	|60000	|2020-01-15|
|3	|Charlie|	35	|IT|	70000|	2019-07-10|
|5	|Eva|	42|	HR|	80000	|2018-05-30|

Less Than or Equal To (<=): Selects employees aged 28 or younger.
```sql
SELECT * FROM employees WHERE age <= 28;
```

| **id** | **name** | **age** | **department** | **salary** | **hire_date** |
|2|	Bob	|25|	IT	|55000|	2021-03-22|
|4|	David|	28|	Finance|	45000	|2022-02-01|

### 3. Logical Operators
AND: Selects IT employees who are older than 30.
```sql
SELECT * FROM employees WHERE department = 'IT' AND age > 30;
```

| **id** | **name** | **age** | **department** | **salary** | **hire_date** |
|3	|Charlie|	35	|IT|	70000|	2019-07-10|

OR: Selects employees in HR or those earning less than $50,000.
```sql
SELECT * FROM employees WHERE department = 'HR' OR salary < 50000;
```

| **id** | **name** | **age** | **department** | **salary** | **hire_date** |
|1	|Alice	|30|	HR	|60000	|2020-01-15|
|4|	David|	28|	Finance|	45000	|2022-02-01|
|5	|Eva|	42|	HR|	80000	|2018-05-30|

NOT: Selects employees who are not in the Finance department.
```sql
SELECT * FROM employees WHERE NOT department = 'Finance';
```

| **id** | **name** | **age** | **department** | **salary** | **hire_date** |
|1	|Alice	|30|	HR	|60000	|2020-01-15|
|2|	Bob	|25|	IT	|55000|	2021-03-22|
|3	|Charlie|	35	|IT|	70000|	2019-07-10|
|5	|Eva|	42|	HR|	80000	|2018-05-30|

