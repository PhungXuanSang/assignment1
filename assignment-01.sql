DROP DATABASE IF EXISTS assignment_01;
CREATE DATABASE assignment_01;

USE assignment_01;

CREATE TABLE department(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50)
);
--
CREATE TABLE `position`(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50)
);
-- Account
CREATE TABLE account(
	id INT PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(100),
    username VARCHAR(50),
    fullname VARCHAR(50),
    department_id INT,
    postion_id INT,
    create_đate DATE
);
-- Group
CREATE TABLE `group`(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    creator_id INT,
    create_date DATE
);
-- GroupAccount
 CREATE TABLE group_account(
	group_id INT ,
    account_id INT,
    join_date DATE
 );
 -- TypeQuestion
 CREATE TABLE type_question(
	id INT,
    name VARCHAR(50)
 );
 -- CategoryQuestion 
 CREATE TABLE category_question(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50)
 );
 -- question 
 CREATE TABLE question(
	id INT PRIMARY KEY AUTO_INCREMENT,
    content VARCHAR(200),
    category_id INT,
    type_id INT,
    creator_id INT,
    create_date DATE
 );
-- Answer
CREATE TABLE answer(
	id INT PRIMARY KEY AUTO_INCREMENT,
    content VARCHAR(200),
    question_id INT,
    is_correct BOOLEAN
);
-- Exam
CREATE TABLE exam(
	id INT PRIMARY KEY AUTO_INCREMENT,
    code VARCHAR(50),
    title VARCHAR(200),
    category_id INT,
    duration DATE,
    creator_id INT,
    create_date DATE
);
-- ExamQuestion
CREATE TABLE exam_question(
	id INT PRIMARY KEY AUTO_INCREMENT,
    question_id int
);