-- DDL
-- Data Definiyion Language
-- 테이블의 형태를 정의하고 수정하고 삭제하는 SQL

-- CREATE TABLE
-- 테이블 만들기
CREATE TABLE user (
id INTEGER,
username VARCHAR(64),
first_name VARCHAR(32),
last_name VARCHAR(32),
email VARCHAR(128)
);

CREATE TABLE menu (
id INTEGER
name TEXT,
description TEXT,
price INTEGER
);

-- Table Constraints
-- NOT NULL
CREATE TABLE users_not_null (
    id INTEGER,
    username VARCHAR(64),
    first_name VARCHAR(32),
    last_name VARCHAR(32),
    email VARCHAR(128) NOT NULL
);

-- UNIQUE (sqlite 미지원)
CREATE TABLE users_unique (
    id INTEGER,
    username VARCHAR(64) UNIQUE,
    first_name VARCHAR(32),
    last_name VARCHAR(32),
    email VARCHAR(128) NOT NULL
);

-- PRIMARY KEY
CREATE TABLE users_pk (
    id INTEGER PRIMARY KEY,
    username VARCHAR(64) UNIQUE,
    first_name VARCHAR(32),
    last_name VARCHAR(32),
    email VARCHAR(128) NOT NULL
);

-- PRIMARY KEY AUTOINCREMENT
CREATE TABLE users_pk_ai (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    username VARCHAR(64) UNIQUE,
    first_name VARCHAR(32),
    last_name VARCHAR(32),
    email VARCHAR(128) NOT NULL
);


-- ALTER TABLE 
-- RENAME TO
ALTER TABLE users RENAME TO users_backup;
ALTER TABLE users_backup RENAME TO users;

ALTER TABLE users RENAME TO users_backup;
ALTER TABLE user_pk_ai RENAME TO users;

-- RENAME COLUMN 
ALTER TABLE users RENAME COLUMN first_name TO given_name;
ALTER TABLE users RENAME COLUMN last_name TO sur_name;

-- ADD COLUMN
ALTER TABLE users ADD COLUMN address VARCHAR(256);
--문제가 될 수 있다
-- 이미 존재하는 Record의 그 Column에는 무엇을 넣어야 할까?
ALTER TABLE users 
ADD COLUMN phone VARCHAR(128)
NOT NULL DEFAULT 'asdf';

-- DROP COLUMN (SQLite 미지원)
ALTER TABLE users DROP COLUMN phone;

-- DROP TABLE 
DROP TABLE  users;
DROP TABLE IF EXISTS users;