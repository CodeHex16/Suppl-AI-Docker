-- Create the users table in the main database (codehex16)
CREATE TABLE IF NOT EXISTS users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(100),
    email VARCHAR(100),
    password VARCHAR(255)
);

-- Insert data into the main database (codehex16)
INSERT INTO users (username, email, password) 
VALUES ('JohnDoe', 'johndoe@example.com', 'pbkdf2:sha256:260000$xEjndHbYuDfUi2hU$aaf584bca9e1c0e54eba1a6389b843067c3e526b6f6c8efba46187ab0846094e');  -- Sample password   password123








-- Create the test database (codehex16_test)
CREATE DATABASE codehex16_test;

-- Connect to the test database and create the users table
\c codehex16_test

-- Create the users table in the test database (codehex16_test)
CREATE TABLE IF NOT EXISTS users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(100),
    email VARCHAR(100),
    password VARCHAR(255)
);

-- Insert data into the test database (codehex16_test)
INSERT INTO users (username, email, password) 
VALUES ('JohnDoe', 'johndoe@example.com', 'pbkdf2:sha256:260000$xEjndHbYuDfUi2hU$aaf584bca9e1c0e54eba1a6389b843067c3e526b6f6c8efba46187ab0846094e');  -- Sample password
