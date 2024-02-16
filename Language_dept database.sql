Create Database Language_dept;
Use Language_dept;

CREATE TABLE instructor
	(instructor_id INT(6) PRIMARY KEY, 
	first_name VARCHAR(20) NOT NULL, 
    last_name VARCHAR(20) NOT NULL, 
	email VARCHAR(50), 
    phone_no INT(10));

CREATE TABLE course
	(course_id INT(10) PRIMARY KEY, 
	course_name VARCHAR(50) NOT NULL, 
    instructor_id INT(10) NOT NULL, 
	course_date DATE, 
    course_desc VARCHAR(60) NOT NULL);
    
CREATE TABLE student 
	(stu_id INT(10) PRIMARY KEY, 
    first_name VARCHAR(30) NOT NULL, 
    last_name VARCHAR(30) NOT NULL,
    email VARCHAR(50),
    phone_no CHAR(10),
    course_id INT(10));

ALTER TABLE student
ADD FOREIGN KEY (course_id) REFERENCES course(course_id);

ALTER TABLE course
ADD FOREIGN KEY (instructor_id) REFERENCES instructor(instructor_id);