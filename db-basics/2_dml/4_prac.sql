-- P1
-- 주어진 user 테이블에 자신의 데이터를 입력하세요.
INSERT INTO user(
    first_name, 
    last_name,
    age,
    balance, 
    phone, 
    email, 
    country
    )
VALUES (
    'TRANDANG', 
    'TIEN', 
    25, 
    10, 
    '010-1234-5678', 
    'trandangtien10b1@gmail.com', 
    'Viet Nam'
);
SELECT * FROM user WHERE first_name = 'TRANDANG';

-- P2
-- 주어진 user 테이블의 데이터 중 age가 30 이상인 사람만 
-- 조회하는 SQL을 작성하세요.
SELECT * FROM user
WHERE age >= 30;

-- P3
-- 주어진 user 테이블의 데이터 중, balance가 100 이상인 사람의
-- balance를 100으로 설정하는 SQL을 작성하세요.
UPDATE user
SET balance = 100
WHERE balance > 100;
SELECT * FROM user;

-- P4
-- 주어진 user 테이블의 데이터 중, first_name이 Austin인
-- 데이터를 삭제하는 SQL을 작성하세요.
DELETE FROM user
WHERE first_name = 'Garth';
SELECT * FROM user;

-- P5
-- 주어진 user 테이블의 데이터 중, 전화번호가 010-으로 시작하지 않는
-- 데이터를 조회하는 SQL을 작성하세요.
SELECT * FROM user
WHERE NOT phone LIKE '010-%';

-- P6
-- 주어진 user 테이블의 데이터 중, 성에 '이 포함된 이름을 조회하는
-- SQL을 작성하세요.
SELECT * FROM user
WHERE last_name LIKE '%''%';