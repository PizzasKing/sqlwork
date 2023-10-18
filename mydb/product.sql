-- product ���̺� ����

CREATE TABLE product(
product_code char(6) primary key,  -- ��ǰ�ڵ�
product_name varchar2(50) not null,
price        number not NULL
);


insert into product(product_code, product_name, price)
values ('100001', '������ ���� ���콺', 25000);
insert into product(product_code, product_name, price)
values ('100002', '���� ���̹� Ű����', 30000);
insert into product(product_code, product_name, price)
values ('100003','������ �г� ���þ߰� �����', 120000);

commit;

select * from product;


--��ǰ�� �� ���� �� ��ǰ ������ ����� ���Ͻÿ�
select 
count(*) as �Ѱ���,
round(avg(price), -2)  -- ��� ������ �ݿø�
from product;

-- ��ǰ�� ���콺 �˻��ϱ�
select * 
from product
where product_name like '%���콺%';

-- ��ǰ�� ���ݼ����� �����Ͻÿ�(��������)
select *
from product 
order by price desc;


