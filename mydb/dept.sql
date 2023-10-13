-- dept 테이블
CREATE TABLE dept(
    deptid    NUMBER PRIMARY KEY,   -- 기본키
    deptname  VARCHAR2(20) NOT NULL, -- NULL 불허
    location  VARCHAR2(20) NOT NULL
);

-- 부서 자료 추가 --
INSERT INTO dept(deptid, deptname, location)
VALUES (10, '전산팀', '서울');
INSERT INTO dept(deptid, deptname, location)
VALUES (20, '관리팀', '인천');
INSERT INTO dept(deptid, deptname, location)
VALUES (30, '마케팅팀', '수원');

SELECT * FROM dept;
COMMIT;

-- 부서이름에서 팀을 제외한 이름을 출력하시오
-- 문자열의 일부분을 추출 : SUBSTR(문자열, 인덱스, 자리수)
SELECT  --deptname 부서이름,
        --LENGTH(deptname) 글자수,
        SUBSTR(deptname, 1, LENGTH(deptname)-1) 팀명1,
        REPLACE(deptname, '팀', '') 팀명2
FROM dept;
