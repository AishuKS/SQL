# Transaction Control Language (TCL) in SQL
## TCL Commands Overview
1. **COMMIT**: Adds new records to a table.
2. **ROLLBACK**: Modifies existing records in a table.
3. **SAVEPOINT**: Removes records from a table.

### 1. COMMIT
The `COMMIT` statement is used to save all the changes made during the current transaction to the database.
Ensures that the changes are permanent and visible to other transactions.

### Example: Committing a Transaction
```sql
BEGIN;

-- Insert a new employee
INSERT INTO employees (employee_id, first_name, last_name, department_id, hire_date, salary)
VALUES (102, 'Alice', 'Smith', 1, '2024-02-01', 60000.00);

-- Commit the transaction
COMMIT;
```

### 2. ROLLBACK
The `ROLLBACK` statement is used to undo changes made during the current transaction.
Restores the database to the last committed state.

### Example: Rolling Back a Transaction
```sql
BEGIN;

-- Insert a new employee
INSERT INTO employees (employee_id, first_name, last_name, department_id, hire_date, salary)
VALUES (103, 'Bob', 'Johnson', 1, '2024-02-01', 65000.00);

-- Rollback the transaction to undo the insert
ROLLBACK;
```

### 3. SAVEPOINT
The  `SAVEPOINT` statement is used to create a point within a transaction to which you can later roll back.
Allows for partial rollbacks, enabling more granular control over transactions.

### Example: Using Savepoints
```sql
BEGIN;

-- Insert a new employee
INSERT INTO employees (employee_id, first_name, last_name, department_id, hire_date, salary)
VALUES (104, 'Charlie', 'Brown', 1, '2024-02-01', 70000.00);

-- Create a savepoint after the first insert
SAVEPOINT savepoint1;

-- Insert another employee
INSERT INTO employees (employee_id, first_name, last_name, department_id, hire_date, salary)
VALUES (105, 'Diana', 'Prince', 1, '2024-02-01', 72000.00);

-- Rollback to the savepoint, undoing the last insert
ROLLBACK TO savepoint1;

-- Commit the transaction
COMMIT;
```
