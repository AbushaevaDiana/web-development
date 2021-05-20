CREATE DATABASE university
CHARACTER SET utf8 
COLLATE utf8_general_ci
;

USE university;

CREATE TABLE student
(
    student_id INT(11) NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    age INT NOT NULL,
    class_id INT NOT NULL,
    PRIMARY KEY(student_id)
)
    CHARACTER SET utf8 
    COLLATE utf8_general_ci
;

CREATE TABLE class
(
    class_id INT(11) NOT NULL AUTO_INCREMENT,
    class_name VARCHAR(255) NOT NULL,
    students_number INT NOT NULL,
    faculty_id INT NOT NULL,
    PRIMARY KEY(class_id)
)
    CHARACTER SET utf8 
    COLLATE utf8_general_ci
;

CREATE TABLE faculty
(
    faculty_id INT(11) NOT NULL AUTO_INCREMENT,
    faculty_name VARCHAR(255) NOT NULL,
    PRIMARY KEY(faculty_id)
)
    CHARACTER SET utf8 
    COLLATE utf8_general_ci
;

INSERT INTO faculty SET faculty_name = 'FIiVT';
INSERT INTO faculty SET faculty_name = 'EF';
INSERT INTO faculty SET faculty_name = 'ISiA';


INSERT INTO class SET class_name = 'PS-11', students_number = 5, faculty_id = 1;
INSERT INTO class SET class_name = 'PS-12', students_number = 5, faculty_id = 1;
INSERT INTO class SET class_name = 'PS-14', students_number = 5, faculty_id = 1;

INSERT INTO class SET class_name = 'PI-11', students_number = 5, faculty_id = 2;
INSERT INTO class SET class_name = 'PI-21', students_number = 5, faculty_id = 2;
INSERT INTO class SET class_name = 'PI-13', students_number = 5, faculty_id = 2;

INSERT INTO class SET class_name = 'SUZiS-11', students_number = 5, faculty_id = 3;
INSERT INTO class SET class_name = 'SUZiS-22', students_number = 5, faculty_id = 3;
INSERT INTO class SET class_name = 'ZiK-33', students_number = 5, faculty_id = 3;

INSERT INTO student SET name = 'Daria', last_name = 'Fischenko', age = 19, class_id = '3';
INSERT INTO student SET name = 'Daniel', last_name = 'Tsaregorodtsev', age = 19, class_id = '3';
INSERT INTO student SET name = 'Alexander', last_name = 'Shumkov', age = 18, class_id = '3';
INSERT INTO student SET name = 'Anastasia', last_name = 'Novikova', age = 19, class_id = '3';
INSERT INTO student SET name = 'Alexander', last_name = 'Zhulin', age = 19, class_id = '3';

INSERT INTO student SET name = 'Roman', last_name = 'Kazantsev', age = 21, class_id = '1';
INSERT INTO student SET name = 'Andrey', last_name = 'Mushkin', age = 19, class_id = '1';
INSERT INTO student SET name = 'Tatiana', last_name = 'Fadeeva', age = 17, class_id = '1';
INSERT INTO student SET name = 'Daria', last_name = 'Chesnokova', age = 20, class_id = '1';
INSERT INTO student SET name = 'Dmitry', last_name = 'Parfenov', age = 19, class_id = '1';

INSERT INTO student SET name = 'Artyom', last_name = 'Cherkasov', age = 19, class_id = '2';
INSERT INTO student SET name = 'Sergey', last_name = 'Patrushev', age = 19, class_id = '2';
INSERT INTO student SET name = 'Yaroslav', last_name = 'Pakhmutov', age = 19, class_id = '2';
INSERT INTO student SET name = 'Alexey', last_name = 'Pavlovsky', age = 19, class_id = '2';
INSERT INTO student SET name = 'Yaroslav', last_name = 'Kuzmin', age = 19, class_id = '2';

INSERT INTO student SET name = 'Lubov', last_name = 'Shigaleva', age = 19, class_id = '4';
INSERT INTO student SET name = 'Tatiana', last_name = 'Apakina', age = 19, class_id = '4';
INSERT INTO student SET name = 'Daria', last_name = 'Bakhtina', age = 20, class_id = '4';
INSERT INTO student SET name = 'Nina', last_name = 'Ivanova', age = 18, class_id = '4';
INSERT INTO student SET name = 'Victoria', last_name = 'Ilyina', age = 19, class_id = '4';

INSERT INTO student SET name = 'Vladislav', last_name = 'Glushkov', age = 20, class_id = '5';
INSERT INTO student SET name = 'Polina', last_name = 'Efimova', age = 20, class_id = '5';
INSERT INTO student SET name = 'Elizabeth', last_name = 'Strelnikova', age = 20, class_id = '5';
INSERT INTO student SET name = 'George', last_name = 'Novoselov', age = 21, class_id = '5';
INSERT INTO student SET name = 'Alexandra', last_name = 'Tishchenko', age = 20, class_id = '5'; 

INSERT INTO student SET name = 'Olga', last_name = 'Sedykh', age = 19, class_id = '6';
INSERT INTO student SET name = 'Egor', last_name = 'Savelyev', age = 21, class_id = '6';
INSERT INTO student SET name = 'Ilya', last_name = 'Sazonov', age = 19, class_id = '6';
INSERT INTO student SET name = 'Daria', last_name = 'Kupriyanova', age = 19, class_id = '6';
INSERT INTO student SET name = 'Dmitry', last_name = 'Udalov', age = 19, class_id = '6';

INSERT INTO student SET name = 'Alina', last_name = 'Sabirova', age = 19, class_id = '7';
INSERT INTO student SET name = 'Nikita', last_name = 'Toropov', age = 19, class_id = '7';
INSERT INTO student SET name = 'Aleksey', last_name = 'Zhigalov', age = 19, class_id = '7';
INSERT INTO student SET name = 'Raisa', last_name = 'Mikheeva', age = 19, class_id = '7';
INSERT INTO student SET name = 'George', last_name = 'Torgashinov', age = 19, class_id = '7';

INSERT INTO student SET name = 'Alena', last_name = 'Antonova', age = 20, class_id = '8';
INSERT INTO student SET name = 'Dinara', last_name = 'Badianova', age = 21, class_id = '8';
INSERT INTO student SET name = 'Irina', last_name = 'Lezhnina', age = 20, class_id = '8';
INSERT INTO student SET name = 'Andrey', last_name = 'Yambulatov', age = 20, class_id = '8';
INSERT INTO student SET name = 'Timur', last_name = 'Salikhov', age = 20, class_id = '8';

INSERT INTO student SET name = 'Julia', last_name = 'Boyko', age = 22, class_id = '9';
INSERT INTO student SET name = 'Svetlana', last_name = 'Yurkina', age = 23, class_id = '9';
INSERT INTO student SET name = 'Anna', last_name = 'Rostovtseva', age = 22, class_id = '9';
INSERT INTO student SET name = 'Julia', last_name = 'Zabrodina', age = 22, class_id = '9';
INSERT INTO student SET name = 'Tatiana', last_name = 'Solovyova', age = 22, class_id = '9';