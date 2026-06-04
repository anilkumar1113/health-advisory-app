CREATE DATABASE IF NOT EXISTS health_advisory;
USE health_advisory;

CREATE TABLE categories (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description VARCHAR(500),
    icon VARCHAR(50)
);

CREATE TABLE conditions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    category_id INT NOT NULL,
    name VARCHAR(200) NOT NULL,
    description TEXT,
    keywords VARCHAR(500),
    icon VARCHAR(50),
    severity VARCHAR(50) DEFAULT 'moderate',
    FOREIGN KEY (category_id) REFERENCES categories(id)
);

CREATE TABLE foods (
    id INT AUTO_INCREMENT PRIMARY KEY,
    condition_id INT NOT NULL,
    name VARCHAR(200) NOT NULL,
    description VARCHAR(500),
    food_type ENUM('eat', 'avoid') NOT NULL,
    benefit VARCHAR(500),
    FOREIGN KEY (condition_id) REFERENCES conditions(id)
);

CREATE TABLE medicines (
    id INT AUTO_INCREMENT PRIMARY KEY,
    condition_id INT NOT NULL,
    name VARCHAR(200) NOT NULL,
    description VARCHAR(500),
    dosage VARCHAR(200),
    medicine_type VARCHAR(100),
    disclaimer VARCHAR(500) DEFAULT 'Consult your doctor before taking any medication.',
    FOREIGN KEY (condition_id) REFERENCES conditions(id)
);

CREATE TABLE tips (
    id INT AUTO_INCREMENT PRIMARY KEY,
    condition_id INT NOT NULL,
    tip TEXT NOT NULL,
    priority INT DEFAULT 0,
    FOREIGN KEY (condition_id) REFERENCES conditions(id)
);
