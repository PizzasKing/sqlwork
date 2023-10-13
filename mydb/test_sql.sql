-- 실습 문제

-- 1. 모든 고객의 이름과 주소를 검색하시오
select name, address from customer;
-- 2. 모든 고객의 이름, 주소, 전화번호를 검색하시오
select name, address, phone from customer;
-- 3. 주소가 '영국'인 고객을 검색하시오
select * from customer 
where address LIKE '영국%';
-- 4. 고객의 이름이 '김연아' 혹은 '안산'인 고객을 검색하시오
select * from customer 
where name in ('김연아', '안산');

select * from customer 
where name = '김연아' or name = '안산';
-- 5. 주소가 '대한민국'이 아닌 고객을 검색하시오
select * from customer
where address not like '대한민국%';
-- 6. 전화번호가 없는 고객을 검색하시오
select * from customer
where phone is null;

select * from customer
where phone is not null;
-- 7. 고객을 이름순으로 정렬하시오(오름차순)
select * from customer
order by name asc; --asc 생략가능함
-- 8 고객의 총 인원수를 구하시오
select count(*) as 총인원
from customer;





