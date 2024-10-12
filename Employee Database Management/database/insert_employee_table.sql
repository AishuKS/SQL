-- Insert records into the employees table
INSERT INTO employees (first_name, last_name, dob, gender, hire_date, job_title, department_id, position_id, salary, status)
VALUES
('John', 'Doe', '1985-03-25', 'Male', '2010-05-01', 'HR Manager', 1, 1, 65000, 'Active'),
('Jane', 'Smith', '1990-11-15', 'Female', '2015-07-20', 'HR Assistant', 1, 2, 45000, 'Active'),
('Robert', 'Brown', '1982-06-10', 'Male', '2007-01-10', 'Software Engineer', 2, 3, 90000, 'Active'),
('Emily', 'White', '1992-08-30', 'Female', '2016-04-15', 'Software Engineer', 2, 3, 92000, 'Active'),
('Michael', 'Green', '1980-09-12', 'Male', '2009-02-10', 'Sales Manager', 3, 4, 85000, 'Active'),
('Anna', 'Jones', '1988-12-15', 'Female', '2014-11-05', 'Sales Executive', 3, 5, 60000, 'Active'),
('David', 'Taylor', '1975-05-01', 'Male', '2005-09-20', 'Marketing Specialist', 4, 6, 70000, 'Active'),
('Sarah', 'Martinez', '1995-03-18', 'Female', '2020-07-12', 'Marketing Intern', 4, 7, 35000, 'Active'),
('Christopher', 'Lee', '1983-07-22', 'Male', '2011-03-29', 'Finance Analyst', 5, 8, 75000, 'Active'),
('Jessica', 'Garcia', '1991-02-11', 'Female', '2016-08-30', 'Finance Manager', 5, 9, 95000, 'Active'),
('James', 'Miller', '1986-06-14', 'Male', '2013-01-21', 'Customer Support Rep', 6, 10, 40000, 'Active'),
('Emma', 'Davis', '1987-09-05', 'Female', '2012-04-16', 'Customer Support Manager', 6, 11, 62000, 'Active'),
('Daniel', 'Wilson', '1990-10-20', 'Male', '2015-06-14', 'IT Administrator', 7, 12, 75000, 'Active'),
('Sophia', 'Moore', '1982-03-09', 'Female', '2008-12-01', 'IT Support Specialist', 7, 13, 55000, 'Active'),
('Matthew', 'Taylor', '1993-11-02', 'Male', '2017-02-20', 'Research Scientist', 8, 14, 95000, 'Active'),
('Isabella', 'Anderson', '1981-08-15', 'Female', '2010-07-25', 'Senior Research Scientist', 8, 15, 115000, 'Active'),
('Joshua', 'Thomas', '1985-04-30', 'Male', '2011-12-11', 'Legal Counsel', 9, 16, 120000, 'Active'),
('Olivia', 'Martin', '1994-05-22', 'Female', '2019-09-04', 'Paralegal', 9, 17, 50000, 'Active'),
('Jacob', 'Martinez', '1989-07-27', 'Male', '2015-11-21', 'Operations Manager', 10, 18, 95000, 'Active'),
('Mia', 'Rodriguez', '1996-06-07', 'Female', '2021-02-15', 'Operations Coordinator', 10, 19, 52000, 'Active'),
('Aiden', 'Clark', '1984-11-21', 'Male', '2012-10-13', 'Public Relations Specialist', 11, 20, 68000, 'Active'),
('Chloe', 'Lewis', '1995-01-30', 'Female', '2018-06-24', 'PR Assistant', 11, 21, 42000, 'Active'),
('Ethan', 'Walker', '1981-02-14', 'Male', '2009-11-01', 'Procurement Officer', 12, 22, 55000, 'Active'),
('Amelia', 'Hall', '1986-05-19', 'Female', '2014-01-16', 'Procurement Manager', 12, 23, 75000, 'Active'),
('Lucas', 'Young', '1989-09-09', 'Male', '2016-03-12', 'Security Officer', 13, 24, 48000, 'Active'),
('Charlotte', 'Allen', '1988-03-04', 'Female', '2013-07-25', 'Security Manager', 13, 25, 72000, 'Active'),
('Henry', 'King', '1979-11-17', 'Male', '2008-06-18', 'Facilities Manager', 14, 26, 68000, 'Active'),
('Ella', 'Scott', '1990-04-30', 'Female', '2015-01-22', 'Facilities Assistant', 14, 27, 42000, 'Active'),
('Samuel', 'Lopez', '1982-06-25', 'Male', '2010-08-11', 'Product Manager', 15, 28, 92000, 'Active'),
('Grace', 'White', '1991-07-14', 'Female', '2017-09-08', 'Product Coordinator', 15, 29, 62000, 'Active'),
('Alexander', 'Harris', '1983-12-20', 'Male', '2011-04-03', 'Quality Analyst', 16, 30, 78000, 'Active'),
('Avery', 'Ramirez', '1986-02-08', 'Female', '2012-10-29', 'Senior Quality Analyst', 16, 31, 85000, 'Active'),
('William', 'Nelson', '1977-08-22', 'Male', '2005-09-16', 'Training Coordinator', 17, 32, 62000, 'Active'),
('Scarlett', 'Carter', '1989-10-31', 'Female', '2015-05-04', 'Training Specialist', 17, 33, 48000, 'Active'),
('Benjamin', 'Flores', '1985-01-19', 'Male', '2010-09-17', 'Compliance Officer', 18, 34, 80000, 'Active'),
('Emma', 'Ward', '1993-03-25', 'Female', '2016-02-15', 'Compliance Assistant', 18, 35, 50000, 'Active'),
('David', 'Young', '1980-11-12', 'Male', '2009-12-03', 'Project Manager', 19, 36, 96000, 'Active'),
('Sophia', 'Martinez', '1992-08-01', 'Female', '2017-01-28', 'Assistant Project Manager', 19, 37, 72000, 'Active'),
('Liam', 'Wright', '1991-06-22', 'Male', '2018-05-17', 'Data Analyst', 20, 38, 75000, 'Active'),
('Sophia', 'Hill', '1994-12-09', 'Female', '2019-03-11', 'Junior Data Analyst', 20, 39, 55000, 'Active'),
('James', 'Harris', '1984-03-08', 'Male', '2013-11-07', 'Logistics Manager', 21, 40, 85000, 'Active'),
('Mia', 'Clark', '1995-10-18', 'Female', '2020-06-20', 'Logistics Coordinator', 21, 41, 62000, 'Active'),
('Noah', 'Lewis', '1988-07-15', 'Male', '2011-02-24', 'Consultant', 22, 42, 90000, 'Active'),
('Amelia', 'Walker', '1991-04-02', 'Female', '2016-04-10', 'Junior Consultant', 22, 43, 60000, 'Active'),
('Lucas', 'Johnson', '1983-08-27', 'Male', '2010-10-13', 'Graphic Designer', 23, 44, 65000, 'Active'),
('Isabella', 'Lopez', '1995-05-11', 'Female', '2019-02-16', 'Junior Graphic Designer', 23, 45, 45000, 'Active');
