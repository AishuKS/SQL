# Data Control Language (DCL) Examples

## 1. GRANT
The `GRANT` statement is used to provide specific privileges to users or roles.
It can be used to give permissions like SELECT, INSERT, UPDATE, DELETE, or ALL PRIVILEGES.

### Example: Granting Permissions

-- Grant SELECT permission on the employees table to a user
```sql
GRANT SELECT ON employees TO username;
```

-- Grant INSERT, UPDATE, and DELETE permissions on the projects table to a user
```sql
GRANT INSERT, UPDATE, DELETE ON projects TO username;
```
-- Grant ALL privileges on the departments table to a role
```sql
GRANT ALL PRIVILEGES ON departments TO role_name;
```

## 2. REVOKE
Removes specific privileges from a user or role.
Ensures that users no longer have access to certain operations on the database objects.

### Example: Revoking Permissions

-- Revoke SELECT permission on the employees table from a user
```sql
REVOKE SELECT ON employees FROM username;
```

-- Revoke INSERT permission on the projects table from a user
```sql
REVOKE INSERT ON projects FROM username;
```

-- Revoke ALL privileges on the departments table from a role
```sql
REVOKE ALL PRIVILEGES ON departments FROM role_name;
```
