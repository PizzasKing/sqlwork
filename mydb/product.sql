-- product 테이블 생성

CREATE TABLE product(
product_code char(6) primary key,  -- 상품코드
product_name varchar2(50) not null,
price        number not NULL
);


insert into product(product_code, product_name, price)
values ('100001', '무소음 무선 마우스', 25000);
insert into product(product_code, product_name, price)
values ('100002', '기계식 게이밍 키보드', 30000);
insert into product(product_code, product_name, price)
values ('100003','무결점 패널 광시야각 모니터', 120000);

commit;

select * from product;


--상품의 총 개수 및 상품 가격의 평균을 구하시오
select 
count(*) as 총개수,
round(avg(price), -2)  -- 백원 단위로 반올림
from product;

-- 상품중 마우스 검색하기
select * 
from product
where product_name like '%마우스%';

-- 상품을 가격순으로 정렬하시오(내림차순)
select *
from product 
order by price desc;


