
-- creating database

CREATE DATABASE IF NOT EXISTS collegeData;


--creating table admission_forms

CREATE TABLE admission_forms (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    date_of_birth DATE NOT NULL,
    phone_number VARCHAR(20) NOT NULL,
    email_id VARCHAR(255) NOT NULL,
    gender ENUM('male', 'female') NOT NULL,
    medium VARCHAR(50) NOT NULL,
    caste VARCHAR(50),
    religion VARCHAR(50),
    residential_address VARCHAR(255) NOT NULL,
    district VARCHAR(50) NOT NULL,
    state VARCHAR(50) NOT NULL,
    country VARCHAR(50) DEFAULT 'India',
    pin_code VARCHAR(10) NOT NULL,
    exam VARCHAR(50) DEFAULT 'Class X',
    board VARCHAR(50) NOT NULL,
    percentage DECIMAL(5,2) NOT NULL,
    year_of_passing YEAR NOT NULL,
    stream ENUM('arts', 'science', 'commerce') NOT NULL,
    subjects VARCHAR(100) NOT NULL,  -- Store MIL choice as a string
    photo_path VARCHAR(255),
    birth_certificate_path VARCHAR(255),
    marksheet_path VARCHAR(255),
    school_certificate_path VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

