CREATE TABLE authors (
    author_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    birth_year INT
);

CREATE TABLE books (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255),
    author_id INT,
    genre VARCHAR(100),
    publication_year INT,
    total_copies INT,
    available_copies INT,
    FOREIGN KEY (author_id) REFERENCES authors(author_id)
);

CREATE TABLE members (
    member_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    membership_date DATE,
    phone_number VARCHAR(20),
    email VARCHAR(100)
);

CREATE TABLE loans (
    loan_id INT PRIMARY KEY AUTO_INCREMENT,
    book_id INT,
    member_id INT,
    loan_date DATE,
    due_date DATE,
    return_date DATE,
    FOREIGN KEY (book_id) REFERENCES books(book_id),
    FOREIGN KEY (member_id) REFERENCES members(member_id)
);

CREATE TABLE returns (
    return_id INT PRIMARY KEY AUTO_INCREMENT,
    loan_id INT,
    return_date DATE,
    FOREIGN KEY (loan_id) REFERENCES loans(loan_id)
);
