# Data Definition Language (DDL) in SQL

## DDL Commands Overview
1. **CREATE**: Create a new table, view, or other object in the database.
2. **ALTER**: Modify an existing database object, such as a table.
3. **DROP**: Delete a table, view, or other object from the database.
4. **TRUNCATE**: Remove all records from a table, but not the table itself.
5. **RENAME**: Change the name of an object.

## Example Using an Employee Database

Let's consider an employee database with three tables: `employees`, `departments`, and `projects`.

### 1. CREATE
The `CREATE` statement is used to create a new table, view, or another database object.

#### Example:
```sql
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50) NOT NULL
);

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    department_id INT,
    hire_date DATE NOT NULL,
    salary DECIMAL(10, 2),
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100) NOT NULL,
    employee_id INT,
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);
```

### 2. ALTER
The `ALTER` statement is used to modify an existing database object, such as a table.

#### Example:
```sql
ALTER TABLE employees ADD COLUMN salary DECIMAL(10, 2);

ALTER TABLE departments DROP COLUMN department_name;
```

### 3. DROP
The `DROP` statement is used to completely remove a table from the database.

#### Example:
```sql
DROP TABLE projects;
```

### 4. TRUNCATE
The `TRUNCATE` statement is used to remove all rows from a table, but the table structure remains.

#### Example:
```sql
TRUNCATE TABLE employees;
```

### 5. RENAME
The 'RENAME' statement is used to rename an object in the database.

#### Example:
```sql
RENAME TABLE departments TO dept;
```
