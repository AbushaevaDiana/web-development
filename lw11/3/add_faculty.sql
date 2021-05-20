USE university;

CREATE TABLE faculty
(
    faculty_id INT(11) NOT NULL AUTO_INCREMENT,
    faculty_name VARCHAR(255) NOT NULL,
    PRIMARY KEY(faculty_id)
)
    CHARACTER SET utf8 
    COLLATE utf8_general_ci;

INSERT INTO faculty SET faculty_name = 'FIiVT';
INSERT INTO faculty SET faculty_name = 'EF';
INSERT INTO faculty SET faculty_name = 'ISiA';