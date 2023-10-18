-- 뷰(VIEW) 생성
-- UPDATE, DELETE 기능을 사용할 수 있음
-- 주소에 '대한민국'을 포함하는 고객들로 구성된 뷰를 만드시오
CREATE VIEW vw_customer
AS SELECT * FROM customer
   WHERE address LIKE '대한민국%';
   
SELECT * FROM vw_customer;

-- 이름이 김연아를 신유빈으로 변경함
UPDATE vw_customer 
  SET name = '신유빈'
  WHERE name = '김연아';
  
-- 고객아이디가 3인 고객을 삭제
-- 참조하고 있는 order 테이블이 있어서 삭제 불가
DELETE FROM vw_customer
WHERE custid = 3;

COMMIT;

-- 고객과 고객의 주문에 관한 정보를 검색
create view vw_book_order as
select cs.name, bk.bookname, od.saleprice
from book bk, customer cs, orders od
where bk.bookid = od.bookid
  and cs.custid = od.custid;

select * from vw_book_order;

select count(*)
from vw_book_order;


-- VIEW 삭제
DROP VIEW vw_customer;