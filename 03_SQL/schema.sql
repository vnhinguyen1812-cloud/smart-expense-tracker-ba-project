CREATE TABLE users (
    user_id INT PRIMARY KEY,
    full_name VARCHAR(100),
    city VARCHAR(50),
    occupation VARCHAR(50)
);

CREATE TABLE accounts (
    account_id INT PRIMARY KEY,
    user_id INT,
    bank_name VARCHAR(50),
    account_type VARCHAR(50),
    balance DECIMAL(12,2)
);

CREATE TABLE categories (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(50)
);

CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY,
    account_id INT,
    category_id INT,
    amount DECIMAL(12,2),
    payment_method VARCHAR(50),
    transaction_date DATETIME
);

CREATE TABLE budgets (
    budget_id INT PRIMARY KEY,
    user_id INT,
    category_id INT,
    monthly_limit DECIMAL(12,2)
);