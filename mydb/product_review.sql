-- product_review ���̺� ����
-- 
create table product_review(
review_no     number primary key,     -- ���� ��ȣ
product_code  char(6) not null,  -- ��ǰ �ڵ�
member_id     varchar2(20) not null,  -- ȸ�� ���̵�
content       clob not null,          -- ���䳻�� 
regdate       date default sysdate,   -- �ۼ���
foreign key(product_code) references product(product_code)  --�ܷ�Ű
);

-- �ڵ� ����(nocache - �ʱ�ȭ�ϸ� 1���� ����)
create sequence seq_rno nocache;

drop sequence seq_rno;

insert into product_review(review_no, product_code, member_id, content)
values(seq_rno.nextval, '100001', 'today10','�������ε� ������ ���� �ִµ�');
insert into product_review(review_no, product_code, member_id, content)
values(seq_rno.nextval, '100001', 'cloud100','�����̶� ����');
insert into product_review(review_no, product_code, member_id, content)
values(seq_rno.nextval, '100002', 'sky123','������ �� ��');
commit;
drop table product_review;

select * from product_review;

truncate table product_review;  -- ���̺� �����ϰ� �����͸� ����


-- ��ǰ�ڵ尡 '100001'�� ��ǰ�� ������ ����Ͻÿ�
select * from product_review
where product_code = '100001'
   and member_id = 'cloud100';
   
-- ���䰡 �ִ� ��ǰ�� �˻��Ͻÿ�(���� ����) 
-- ������ġ : a���̺��� �⺻Ű = b���̺��� �ܷ�Ű
select *
from product a, product_review b
where a.product_code = b.product_code;

-- ǥ�ع�� - ��������(INNER JOIN)
select *
from product a join product b
  on a.product_code = b.product_code;
  
-- ������ ������ ������� ��ǰ�� ������ �˻��Ͻÿ�,
-- �������� ���(Product_�� ��ǰ�� ��� ��µǰ� ���䰡 �ֵ� ���� �������, ���䰡 ������ null�� ��µ�)
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



