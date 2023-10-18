-- product_review 테이블 생성
-- 
create table product_review(
review_no     number primary key,     -- 리뷰 번호
product_code  char(6) not null,  -- 상품 코드
member_id     varchar2(20) not null,  -- 회원 아이디
content       clob not null,          -- 리뷰내용 
regdate       date default sysdate,   -- 작성일
foreign key(product_code) references product(product_code)  --외래키
);

-- 자동 순번(nocache - 초기화하면 1부터 시작)
create sequence seq_rno nocache;

drop sequence seq_rno;

insert into product_review(review_no, product_code, member_id, content)
values(seq_rno.nextval, '100001', 'today10','무소음인데 소음이 조금 있는듯');
insert into product_review(review_no, product_code, member_id, content)
values(seq_rno.nextval, '100001', 'cloud100','무선이라 편함');
insert into product_review(review_no, product_code, member_id, content)
values(seq_rno.nextval, '100002', 'sky123','게임할 맛 남');
commit;
drop table product_review;

select * from product_review;

truncate table product_review;  -- 테이블 유지하고 데이터만 삭제


-- 상품코드가 '100001'인 상품의 정보를 출력하시오
select * from product_review
where product_code = '100001'
   and member_id = 'cloud100';
   
-- 리뷰가 있는 상품을 검색하시오(동등 조인) 
-- 조건일치 : a테이블의 기본키 = b테이블의 외래키
select *
from product a, product_review b
where a.product_code = b.product_code;

-- 표준방식 - 내부조인(INNER JOIN)
select *
from product a join product b
  on a.product_code = b.product_code;
  
-- 리뷰의 유무에 관계없이 상품의 정보를 검색하시오,
-- 동등조인 방식(Product_의 상품은 모두 출력되고 리뷰가 있든 없든 관계없음, 리뷰가 없으면 null로 출력됨)
select *
from product a left join product b
on a.product_code = b.product_code;

select
b.product_code,
b.product_name,
b.price,
a.member_id,
a.content,
a.regdate
from product_review a right join product b
   on a.product_code = b.product_code;


rollback;



