-- 서브 쿼리(Sub Query)

-- 도서중 가격이 가장 높은 도서를 검색하시오
SELECT MAX(price) FROM book;



-- 도서중에서 가장 비싼 도서의 이름을 검색하시오
SELECT bookname, price
FROM book
WHERE price = (SELECT MAX(price) FROM book);

-- 도서를 구매한 적이 있는 고객의 이름을 검색하시오
SELECT name
FROM customer
WHERE custid IN(SELECT custid FROM orders);

-- 조인방식 : customer, orders
-- 도서를 구매한 적이 있는 고객의 이름을 검색하시오
SELECT DISTINCT cus.name
FROM customer cus, orders ord
WHERE cus.custid = ord.custid;
