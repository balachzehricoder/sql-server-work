CREATE TABLE tb_course
(
	course_id INT PRIMARY KEY IDENTITY(1,1),
	course_name VARCHAR(100) NOT NULL UNIQUE  ,
	credit_hr INT NOT NULL DEFAULT 2



	)


CREATE TABLE tb_student
(
	std_id INT PRIMARY KEY IDENTITY(1,1),
	std_name VARCHAR(100) NOT NULL,
	email VARCHAR(100) NOT NULL UNIQUE,
	age INT NOT NULL CHECK(age >= 18),
	fees INT NOT NULL  DEFAULT 5000,
	
	course_enrolled INT,
	FOREIGN KEY (course_enrolled) REFERENCES tb_course(course_id)

);



DROP TABLE tb_student



INSERT INTO tb_course(course_name) VALUES ('ASP.NET');
INSERT INTO tb_course(course_name) VALUES ('PHP');
INSERT INTO tb_course(course_name) VALUES ('C#');
SELECT * FROM tb_student;