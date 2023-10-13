-- 숫자 타입 내장 함수
-- 절대값 구하기 : ABS()
-- 제공 테이블 : dual
SELECT abs(-10) FROM dual;

-- 반올림 : ROUND(숫자, 자리수)
SELECT TRUNC(123.67, 1) FROM dual;
SELECT TRUNC(123.67, 0) FROM dual;
SELECT TRUNC(123.67, 2) FROM dual;

-- 거듭제곱 : POWER(밑, 지수)
SELECT POWER(2, 3) FROM dual;

-- 문자 타입
-- 소문자로 변경하기 : LOWER('ABCD')
-- 대문자로 변경하기 : UPPER('abcd')
SELECT LOWER('ABCD') FROM dual;
SELECT UPPER('abcd') FROM dual;


-- 문자열의 일부분을 추출 : SUBSTR(문자열, 인덱스, 자리수)
SELECT SUBSTR('abcd', 1, 2) FROM dual;

-- 문자열을 찾아 바꾸기: REPLACE(문자열, 변경전문자, 변경후문자)
SELECT REPLACE('abcd', 'c', 'e') FROM dual;

-- 문자열의 길이 : LENGTH(문자열)
SELECT LENGTH('abcd') FROM dual;

-- 마스킹 : LPAD(문자열, 길이, 특정문자) - 왼쪽부터 특정 문자로 채움 반대는  RPAD
SELECT LPAD('today', 10, '*') FROM dual;
SELECT RPAD('today', 10, '*') FROM dual;

-- 주문테이블
-- 고객별 평균 주문 금액을 반올림
SELECT SUM(saleprice) AS 합계금액,
       COUNT(saleprice) as 주문건수,
       round(avg(saleprice), -2) as 평균주문금액
FROM orders
group by custid;

-- 도서테이블
-- 책제목의 글자수
SELECT bookname,
       LENGTH(bookname) as 문자수,
       LENGTHB(bookname) as 바이트수
FROM book;

-- 축구를 농구로 변경하여 검색
SELECT bookname,
       replace(bookname, '축구', '농구') as bookname
FROM book;

-- 고객 테이블 
SELECT SUBSTR(name, 1, 1) 성,
       COUNT(*) 인원
FROM customer
GROUP BY SUBSTR(name, 1, 1);
