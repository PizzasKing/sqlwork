-- 서브 쿼리(Sub Query): 부속질의(중첩 쿼리)
-- SELECT문 내부에 또 SELECT문이 존재함

-- 도서중 가격이 가장 높은 가격을 검색하시오
-- MAX(price) : 35000
SELECT MAX(price) FROM book;

-- 도서중에서 가장 비싼 도서의 이름을 검색하시오
SELECT bookname, price
FROM book
WHERE price = 
      (SELECT MAX(price) FROM book);
      
-- 도서를 구매한 적이 있는 고객의 이름을 검색하시오
SELECT custid FROM orders;

SELECT name
FROM customer
WHERE custid IN(select custid from orders);

SELECT name
FROM customer
WHERE custid IN(SELECT custid FROM orders);

-- 다중형 서브쿼리 
-- 도서를 구매한 적이 없는 고객의 이름 출력
select name
from customer
where custid not in (select custid from orders);


-- 조인 방식 : customer, orders
-- 도서를 구매한 적이 있는 고객의 이름을 검색하시오
SELECT DISTINCT cus.name
FROM customer cus, orders ord
WHERE cus.custid = ord.custid;

-- from 절에 있는 서브쿼리 -인라인뷰라고도 함
-- 고객의 이름과 고객의 판매액 검색(customer, orders)
-- 그룹별 : Group by
-- 단, 고객 번호가 2 이하임 

-- 동등 조인
select cs.name, sum(od.saleprice)
from customer cs, orders od
where cs.custid = od.custid
group by cs.name;

-- 서브 쿼리
select cs.name, sum(od.saleprice)
from (select * from customer where custid <= 2) cs,
     orders od
where cs.custid = od.custid
group by cs.name;

select * from product;
select * from product_review;
-- 상품 리뷰 테이블에 없는 상품 이름 검색
select a.product_code,
       a.member_id,
       a.content,
       (select b.product_name from product b where a.product_code = b.product_code) product_name,
       a.member_id,
       a.content
from product_review a;








