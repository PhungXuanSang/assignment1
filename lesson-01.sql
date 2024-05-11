-- Xóa DATA BASE (Nếu tồn tại)
DROP DATABASE IF EXISTS lesson_vti_01;
-- Tạo DATA BASE
CREATE DATABASE lesson_VTI_01;

-- 
SHOW DATABASES;

-- Chọn cơ sở dữ liệu muốn thao tác
USE lesson_VTI_01;

-- Chạy 1 dòng nhanh : Ctrl + Enter
-- Kiểu dữ liệu
-- Số nguyên : TINYINT, SMALLINT, MEDIUMINT, INT, BIGINT;
-- Số thực : FLOAT,DOUBLE;
-- Chuỗi : VARCHAR(50),CHAR(50);
-- Thời gian : DATE, TIME, DATETIME(yyyy-MM-DD);

-- Xóa bảng nếu tồn tại
DROP TABLE IF EXISTS department;
-- Tạo Bảng

CREATE TABLE department(
	id INT,
    name VARCHAR(50),
    created_date DATE
);
-- Thêm dữ liệu vào bảng
INSERT INTO department (id,name,created_date)
VALUES (1,"Bảo vệ"    ,"2020-01-09"),
	   (2,"Kinh Doanh","2020-01-11"),
       (3,"Giám đốc"  ,"2020-01-08");

-- Hiển thị dữ liệu 
TABLE department;
-- Hoặc 
SELECT * FROM department;
/*
-- Ràng buộc dữ liệu
 Khóa chính (PRIMARY KEY)
 1. Một bảng có tối đa một khóa chính
 2. Giá trị là duy nhất
 3. Phải NOT NULL
 tự động tăng: AUTO_INCREMENT
 
- facebook
*/
-- Ràng buộc dữ liệu
-- Khóa chính (PRIMARY KEY)
-- 1. Một bảng có tối đa một khóa chính
-- 2. Giá trị là duy nhất
-- 3. Phải NOT NULL

CREATE TABLE product(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50)
);
INSERT INTO product(id,name)
VALUE (1,"Chuột máy tính"),
	  (2,"Bàn phím máy tính");
      
INSERT INTO product(name)
VALUE ("Tủ lạnh");

-- NOT NULL : Không được để trống

DROP TABLE IF EXISTS question;

CREATE TABLE question(
id INT PRIMARY KEY AUTO_INCREMENT,
content VARCHAR(100) NOT NULL
);
--
INSERT INTO question(content)
VALUE (null);
--
INSERT INTO question(content)
VALUE ("");
