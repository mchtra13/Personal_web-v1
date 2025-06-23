CREATE DATABASE IF NOT EXISTS personal_web;
USE personal_web;

-- Admin login
CREATE TABLE admins (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50),
    password VARCHAR(255)
);
-- Username: admin, Password: admin123
INSERT INTO admins (username, password) VALUES ('admin', '$2y$10$0hvTtwxzWyP6FzATF.CNReE.Cj4iNLD2E0U2dzOpn8oTkfvjHpiQ6');

-- Artikel
CREATE TABLE articles (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(200),
    content TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Galeri
CREATE TABLE gallery (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100),
    filename VARCHAR(200),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- About
CREATE TABLE about (
    id INT AUTO_INCREMENT PRIMARY KEY,
    content TEXT
);
