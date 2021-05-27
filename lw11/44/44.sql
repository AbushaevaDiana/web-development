SELECT
    student.last_name AS family_name,
    student.name,
    student.age,
    class.class_name AS class,
    faculty.faculty_name AS faculty
FROM
    student
    LEFT JOIN class ON student.class_id = class.class_id
    LEFT JOIN faculty ON class.faculty_id = faculty.faculty_id
WHERE
    student_id = 1;