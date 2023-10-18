-- JOB_INFO 테이블 생성
-- SALARY는 $기준임
create table JOB_INFO(
JOB_ID varchar(10),  -- 직업 아이디
MIN_SALARY NUMBER,   -- 최저급여
MAX_SALARY NUMBER    -- 최고급여
);

INSERT INTO JOB_INFO
VALUES ('AD_PRES', 20000, 40000); 
INSERT INTO JOB_INFO
VALUES ('AD_VP', 15000, 30000); 
INSERT INTO JOB_INFO
VALUES ('AD_ASST', 3000, 6000); 
INSERT INTO JOB_INFO
VALUES ('FI_MGR', 8000, 16000); 
INSERT INTO JOB_INFO
VALUES ('FI_ACCOUNT', 4000, 9000); 
INSERT INTO JOB_INFO
VALUES ('AC_MGR', 8000, 16000); 
INSERT INTO JOB_INFO
VALUES ('AC_ACCOUNT', 4000, 9000); 

COMMIT;
SELECT * FROM JOB_INFO;

-- 최저급여의 평균을 구하시오
SELECT ROUND(AVG(MIN_SALARY), -1) 최저급여평균,
       ROUND(AVG(MAX_SALARY), -1) 최고급여평균
       FROM JOB_INFO;
/* 
실행순서
1. from 절
2. where 절
3. select 절
4. order 절
*/

-- 최저 급여가 5000달러 이상인 직업 아이디를 검색하시오
SELECT JOB_ID, MIN_SALARY MIN_SAL
FROM JOB_INFO
WHERE MIN_SALARY >= 5000;
      --MIN_SAL >= 5000;  순서 밀림 

-- 최저 급여가 5000달러 이상인 정보를 검색할 뷰 생성
CREATE VIEW V_JOB_INFO
AS SELECT *
   FROM JOB_INFO
   WHERE MIN_SALARY > = 5000;
SELECT * FROM V_JOB_INFO;

-- 최고 급여와 최저 급여의 차가 10000달러 이상인 직업아이디 수
SELECT COUNT(*)
FROM V_JOB_INFO
WHERE MAX_SALARY - MIN_SALARY >= 10000;

-- 최고 급여와 최저 급여의 차가 10000달러 이상인 직업아이디를 검색
SELECT JOB_ID
FROM V_JOB_INFO
WHERE MAX_SALARY - MIN_SALARY >= 10000;

-- 직업 아이디의 이름이 FI로 시작하는 자료를 검색하시오
SELECT *
FROM V_JOB_INFO
WHERE JOB_ID LIKE 'FI%';

-- MAX_SALARY가 최고인 직업 아이디를 검색하시오
SELECT JOB_ID, max_salary
FROM V_JOB_INFO
where max_salary = (select max(max_salary) from job_info); 

