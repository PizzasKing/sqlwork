-- ���� ����(Sub Query): �μ�����(��ø ����)
-- SELECT�� ���ο� �� SELECT���� ������

-- ������ ������ ���� ���� ������ �˻��Ͻÿ�
-- MAX(price) : 35000
SELECT MAX(price) FROM book;

-- �����߿��� ���� ��� ������ �̸��� �˻��Ͻÿ�
SELECT bookname, price
FROM book
WHERE price = 
      (SELECT MAX(price) FROM book);
      
-- ������ ������ ���� �ִ� ���� �̸��� �˻��Ͻÿ�
SELECT custid FROM orders;

SELECT name
FROM customer
WHERE custid IN(select custid from orders);

SELECT name
FROM customer
WHERE custid IN(SELECT custid FROM orders);

-- ������ �������� 
-- ������ ������ ���� ���� ���� �̸� ���
select name
from customer
where custid not in (select custid from orders);


-- ���� ��� : customer, orders
-- ������ ������ ���� �ִ� ���� �̸��� �˻��Ͻÿ�
SELECT DISTINCT cus.name
FROM customer cus, orders ord
WHERE cus.custid = ord.custid;

-- from ���� �ִ� �������� -�ζ��κ��� ��
-- ���� �̸��� ���� �Ǹž� �˻�(customer, orders)
-- �׷캰 : Group by
-- ��, �� ��ȣ�� 2 ������ 

-- ���� ����
select cs.name, sum(od.saleprice)
from customer cs, orders od
where cs.custid = od.custid
group by cs.name;

-- ���� ����
select cs.name, sum(od.saleprice)
from (select * from customer where custid <= 2) cs,
     orders od
where cs.custid = od.custid
group by cs.name;

select * from product;
select * from product_review;
-- ��ǰ ���� ���̺� ���� ��ǰ �̸� �˻�
select a.product_code,
       a.member_id,
       a.content,
       (select b.product_name from product b where a.product_code = b.product_code) product_name,
       a.member_id,
       a.content
from product_review a;








