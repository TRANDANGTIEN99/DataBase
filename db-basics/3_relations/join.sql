-- CROSS JOIN
-- 곱집합을 만드는 용도
SELECT * 
FROM lecture, instructor;
-- WHERE lecture.instructor_id = instructor.id;

-- INNER JOIN
SELECT *
FROM lecture INNER JOIN instructor
    -- ON을 통해 모을 기준을 정한다.
    ON lecture.instructor_id = instructor.id;

-- 새로운 테이블이라고 생각하고, 컬럼을 지정할 수 있다.
SELECT name, day, first_name, last_name
FROM lecture INNER JOIN instructor 
    ON lecture.instructor_id = instructor.id
ORDER BY instructor.id;

-- 만약 두 테이블이 같은 이름을 가진 컬럼이 있다면 주의할것
-- 어떤 테이블의 데이터인지 명시해야 한다.
-- SELECT id, name, day, first_name, last_name
SELECT instructor.id, name, day, first_name, last_name
FROM instructor INNER JOIN lecture
    ON lecture.instructor_id = instructor.id
ORDER BY instructor.id;
-- INNER JOIN은 한쪽 테이블의 레코드가 없으면 반대쪽 데이터가 나오지 않는다.

-- 학생과 지도교수 데이터를 다 보고싶다.
SELECT *
FROM student INNER JOIN instructor
    ON student.advisor_id = instructor.id
ORDER BY student.id;


-- OUTER JOIN
SELECT instructor.id, name, day, first_name, last_name
FROM instructor LEFT OUTER JOIN lecture
    ON instructor.id = lecture.instructor_id;

-- OUTER JOIN은 반대쪽 데이터가 없어도 누락시키지 않는다.
SELECT lecture.id, name, day, first_name, last_name
FROM lecture LEFT OUTER JOIN instructor
    ON instructor.id = lecture.instructor_id;

-- 어느 테이블을 우선할지 결정해야 하기 때문에 방향이 중요하다.
SELECT *
FROM lecture RIGHT OUTER JOIN instructor
    ON instructor.id = lecture.instructor_id;

SELECT * 
FROM lecture FULL OUTER JOIN instructor
    ON instructor.id = lecture.instructor_id;

-- OUTER JOIN은 방향이 중요하다.
SELECT *
FROM student LEFT OUTER JOIN instructor
    ON student.advisor_id = instructor.id;

SELECT *
FROM instructor LEFT OUTER JOIN student
    ON student.advisor_id = instructor.id;


-- INNER JOIN -> JOIN
SELECT *
FROM student JOIN instructor
    ON student.advisor_id = instructor.id
ORDER BY student.id;

-- LEFT OUTER JOIN -> LEFT JOIN
SELECT *
FROM student LEFT JOIN instructor
    ON student.advisor_id = instructor.id;

SELECT *
FROM instructor LEFT JOIN student
    ON student.advisor_id = instructor.id;