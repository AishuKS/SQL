CREATE TABLE departments (
    department_id INT AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL,
    manager_id INT
);


CREATE TABLE positions (
    position_id INT AUTO_INCREMENT PRIMARY KEY,
    position_name VARCHAR(100) NOT NULL,
    min_salary DECIMAL(10, 2),
    max_salary DECIMAL(10, 2)
);


CREATE TABLE employees (
    emp_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    dob DATE,
    gender ENUM('Male', 'Female') NOT NULL,
    hire_date DATE,
    job_title VARCHAR(100),
    department_id INT,
    position_id INT,
    salary DECIMAL(10, 2),
    status ENUM('Active', 'Inactive') DEFAULT 'Active',
    
    -- Foreign Key Constraints
    CONSTRAINT fk_department
        FOREIGN KEY (department_id) REFERENCES departments(department_id)
        ON DELETE SET NULL,
    CONSTRAINT fk_position
        FOREIGN KEY (position_id) REFERENCES positions(position_id)
        ON DELETE SET NULL
);
