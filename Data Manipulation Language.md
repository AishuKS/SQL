# Data Manipulation Language (DML) in SQL
## DML Commands Overview
1. **INSERT**: Adds new records to a table.
2. **UPDATE**: Modifies existing records in a table.
3. **DELETE**: Removes records from a table.

## Example Using an Employee Database
Let's consider an employee database with three tables: employees, departments, and projects.

### 1. INSERT
The `INSERT` statement adds new records to a table.

#### Example:
```sql
-- Adding a new department
INSERT INTO departments (department_id, department_name)
VALUES (1, 'Human Resources');

-- Adding a new employee
INSERT INTO employees (employee_id, first_name, last_name, department_id, hire_date, salary)
VALUES (101, 'John', 'Doe', 1, '2024-01-15', 50000.00);

-- Adding a new project
INSERT INTO projects (project_id, project_name, employee_id)
VALUES (201, 'Project Alpha', 101);
```

### 2. UPDATE
The `UPDATE` statement modifies existing records in a table.

#### Example:
```sql
-- Updating an employee's salary
UPDATE employees
SET salary = 55000.00
WHERE employee_id = 101;

-- Changing a department name
UPDATE departments
SET department_name = 'HR Department'
WHERE department_id = 1;
```

### 3. DELETE
The `DELETE` statement removes records from a table.

#### Example:
```sql
-- Deleting an employee
DELETE FROM employees
WHERE employee_id = 101;

-- Deleting a department
DELETE FROM departments
WHERE department_id = 1;
```
