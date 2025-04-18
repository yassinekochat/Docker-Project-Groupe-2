ALTER USER 'root'@'%' IDENTIFIED BY '0000';
FLUSH PRIVILEGES;
CREATE DATABASE IF NOT EXISTS test_db;
USE test_db;

CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL
);

INSERT INTO users (username, email) VALUES ('testuser', 'testuser@example.com');
