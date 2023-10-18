-- 조인 연습
-- product, product_review
select * from product;
select * from product_review;

-- 리뷰가 있는 상품의 정보를 검색하시오
-- 리뷰테이블에 product_name 칼럼을 조인
select b.review_no,
       b.product_code,
       a.product_name,
       b.content,
       b.regdate
from product a, product_review b
where a.product_code = b.product_code;


select a.product_name,
       b.*
from product a, product_review b
where a.product_code = b.product_code;

-- ANSI(미국협회) 조인 - STANDARD JOIN(내부조인)
select b.review_no,
       b.product_code,
       a.product_name,
       b.content,
       b.regdate
from product a join product_review b
on a.product_code = b.product_code;

-- 외부 조인(LEFT OUTER, RIGHT 조인)
-- 리뷰가 없는 상품의 정보를 검색하시오
select a.product_name,
       b.review_no,
       b.product_code,
       b.content,
       b.regdate
from product a left join product_review b
on a.product_code = b.product_code;

-- 리뷰가 없는 상품의 정보를 검색하시오
select a.product_name "상품후기가 없는 상품"
from product a left join product_review b
on a.product_code = b.product_code
where b.content is null;

-- 상품 리뷰테이블에 product_name 칼럼 추가
-- 스칼라 서브쿼리 : 한 칼럼만 반환함, SELECT 절에서 사용
select A.review_no,
       A.product_code,
       (select B.product_name from product B where A.product_code = B.product_code) product_name,
       A.content,
       A.member_id       
from product_review A;
