DROP DATABASE employeetasktracker;
CREATE DATABASE employeetasktracker;
USE employeetasktracker;
CREATE TABLE Users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    role ENUM('Associate', 'Admin'),
    username VARCHAR(50) UNIQUE,
    password VARCHAR(255)
);
CREATE TABLE tasks (
    task_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_id INT,
    project VARCHAR(100),
    date DATE,
    start_time TIME,
    end_time TIME,
    category VARCHAR(50),
    description TEXT,
    FOREIGN KEY (employee_id) REFERENCES Users(user_id)
);
CREATE TABLE Projects (
    project_id INT AUTO_INCREMENT PRIMARY KEY,
    project_name VARCHAR(100),
    project_description TEXT
);
CREATE TABLE Roles (
    role_id INT AUTO_INCREMENT PRIMARY KEY,
    role_name VARCHAR(50) NOT NULL
);


select*from Users;
select*from tasks;
select*from Projects;
select*from Roles;

INSERT INTO Roles (role_name) VALUES ('Admin'), ('Associate');
ALTER TABLE Users ADD role_id INT, ADD FOREIGN KEY (role_id) REFERENCES Roles(role_id);