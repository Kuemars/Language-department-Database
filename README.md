The following is the list of entities and attributes:

Instructor:
•	instructor_id (PK)
•	first_name
•	last_name
•	email
•	phone_no

Course:
•	course_id (PK)
•	course_name
•	instructor_id (FK)
•	course_date
•	course_desc

Student:
•	stu_id (PK)
•	first_name
•	last_name
•	email
•	phone_no
•	course_id (FK)
