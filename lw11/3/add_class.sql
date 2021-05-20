USE university;

CREATE TABLE class
(
    class_id INT(11) NOT NULL AUTO_INCREMENT,
    class_name VARCHAR(255) NOT NULL,
    students_number INT NOT NULL,
    faculty_id INT NOT NULL,
    PRIMARY KEY(class_id)
)
    CHARACTER SET utf8 
    COLLATE utf8_general_ci;

INSERT INTO class SET class_name = 'PS-11', students_number = 5, faculty_id = 1;
INSERT INTO class SET class_name = 'PS-12', students_number = 5, faculty_id = 1;
INSERT INTO class SET class_name = 'PS-14', students_number = 5, faculty_id = 1;

INSERT INTO class SET class_name = 'PI-11', students_number = 5, faculty_id = 2;
INSERT INTO class SET class_name = 'PI-21', students_number = 5, faculty_id = 2;
INSERT INTO class SET class_name = 'PI-13', students_number = 5, faculty_id = 2;

INSERT INTO class SET class_name = 'SUZiS-11', students_number = 5, faculty_id = 3;
INSERT INTO class SET class_name = 'SUZiS-22', students_number = 5, faculty_id = 3;
INSERT INTO class SET class_name = 'ZiK-33', students_number = 5, faculty_id = 3;
