-- Create users table
CREATE TABLE users (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    password VARCHAR(255) NOT NULL
);

-- Create user_roles table
CREATE TABLE user_roles (
    user_id BIGINT NOT NULL,
    roles VARCHAR(255),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

-- Insert sample data
-- Passwords are bcrypt hashed "password" -> $2a$10$8.UnVuG9HHgffUDAlk8qfeclupxTVnapJFNy2HrD6MBzN/vUqDAn6
INSERT INTO users (id, email, first_name, last_name, password) VALUES
(1, 'admin@example.com', 'Admin', 'User', '$2a$10$8.UnVuG9HHgffUDAlk8qfeclupxTVnapJFNy2HrD6MBzN/vUqDAn6'),
(2, 'user@example.com', 'Regular', 'User', '$2a$10$8.UnVuG9HHgffUDAlk8qfeclupxTVnapJFNy2HrD6MBzN/vUqDAn6');

INSERT INTO user_roles (user_id, roles) VALUES
(1, 'ROLE_ADMIN'),
(1, 'ROLE_USER'),
(2, 'ROLE_USER');
