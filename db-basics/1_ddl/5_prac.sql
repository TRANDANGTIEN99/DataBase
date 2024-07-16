
-- P1
-- 다음 정보를 포함하여
-- 사원 정보를 담기 위한 테이블을 만드는 SQL을 작성하시오.

-- 사원 이름(name)
-- 입사 연도(year)
-- 직급(grade)
-- 현재 연봉(salary)
DROP TABLE IF EXISTS employee;
CREATE TABLE employee (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    year INTEGER NOT NULL,
    grade TEXT,
    salary REAL NOT NULL
);

-- P2
-- 다음 정보를 포함하여
-- 쇼핑몰의 물품에 대한 정보를 담기 위한 테이블을 만드는 SQL을 작성하시오.

-- 상품 이름(name)
-- 가격(price)
-- 재고(stock)
DROP TABLE IF EXISTS item;
CREATE TABLE item (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    price REAL,
    stock INTEGER DEFAULT 0
);

-- P3
-- 다음 정보를 포함하여
-- 음식점 메뉴에 대한 정보를 담기 위한 테이블을 만드는 SQL을 작성하시오.

-- 메뉴 이름(name)
-- 분류(한식, 중식, 일식, 양식)(category)
-- 메뉴 설명(description)
-- 가격(price)
-- 채식 여부(vegetarian)
DROP TABLE IF EXISTS menu;
CREATE TABLE menu (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(32),
    category VARCHAR(32),
    description TEXT,
    price REAL,
    vegetarian INTEGER  -- 0이면 false 1이면 true
);

-- P4
-- 다음 정보를 포함하여
-- 음악 정보를 담기 위한 테이블을 만드는 SQL을 작성하시오.

-- 제목(title)
-- 가수(artist)
-- 작곡가(writer)
-- 작사가(lyrics)
-- 앨범이름(album_name)
-- 발매년도(year)
-- 재생시간(dur_in_secs)
DROP TABLE IF EXISTS track;
CREATE TABLE track (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title VARCHAR(64),
    artist VARCHAR(64),
    writer_by VARCHAR(32),
    lyrics_by VARCHAR(32),
    album_name VARCHAR(64),
    year INTEGER,
    -- month INTEGER,
    -- day INTEGER,
    -- release_date TEXT,
    dur_in_sec INTEGER
);

-- P5
-- P1에서 작성한 테이블에,

-- 전화번호(phone_number)
-- 이메일(email)
-- 정보를 담을 수 있도록 Column을 추가하시오.
ALTER TABLE employee ADD COLUMN phone_number TEXT;
ALTER TABLE employee ADD COLUMN email TEXT;


-- P6
-- P2에서 작성한 테이블에,

-- 제조사(company)