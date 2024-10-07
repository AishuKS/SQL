# Data Query Language (DQL) in Employee Database

## 1. Employees Table

| **employee_id** | **first_name** | **last_name** | **department_id** | **hire_date** | **salary** |
|------------------|----------------|----------------|--------------------|----------------|------------|
| 101              | John           | Doe            | 1                  | 2024-01-15     | 55000.00   |

## 2. Departments Table

| **department_id** | **department_name** |
|--------------------|---------------------|
| 1                  | HR Department       |

## 3. Projects Table

| **project_id** | **project_name** | **employee_id** |
|-----------------|------------------|------------------|
| 201             | Project Alpha    | 101              |

---

## DQL Operations

### 1. SELECT All Employees

```sql
SELECT * FROM employees;
```

| **employee_id** | **first_name** | **last_name** | **department_id** | **hire_date** | **salary** |
|------------------|----------------|----------------|--------------------|----------------|------------|
| 101              | John           | Doe            | 1                  | 2024-01-15     | 55000.00   |

### 2. SELECT Employees with Salary Greater Than 50000

```sql
SELECT * FROM employees WHERE salary > 50000;
```

| **employee_id** | **first_name** | **last_name** | **department_id** | **hire_date** | **salary** |
|------------------|----------------|----------------|--------------------|----------------|------------|
| 101              | John           | Doe            | 1                  | 2024-01-15     | 55000.00   |


### 3. SELECT Department Names
```sql
SELECT department_name FROM departments;
```

| **department_name** |
|---------------------|
| HR Department       |

