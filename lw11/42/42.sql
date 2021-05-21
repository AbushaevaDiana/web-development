SELECT
    student.last_name AS family_name,
    student.name,
    student.age,
    class.class_name AS class,
    faculty.faculty_name AS faculty
FROM
    student
    INNER JOIN class ON student.class_id = class.class_id
    INNER JOIN faculty ON class.faculty_id = faculty.faculty_id
WHERE
    class_name = 'SUZiS-11';