SELECT
    student.last_name AS family_name,
    student.name,
    student.age,
    class.class_name AS class,
    faculty.faculty_name AS faculty
FROM
    student
JOIN
    class
ON 
    student.class_id = class.class_id
JOIN
    faculty
ON 
    class.faculty_id = faculty.faculty_id
WHERE
    age LIKE 19;