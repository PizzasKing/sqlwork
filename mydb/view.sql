-- ��(VIEW) ����
-- UPDATE, DELETE ����� ����� �� ����
-- �ּҿ� '���ѹα�'�� �����ϴ� ����� ������ �並 ����ÿ�
CREATE VIEW vw_customer
AS SELECT * FROM customer
   WHERE address LIKE '���ѹα�%';
   
SELECT * FROM vw_customer;

-- �̸��� �迬�Ƹ� ���������� ������
UPDATE vw_customer 
  SET name = '������'
  WHERE name = '�迬��';
  
-- �����̵� 3�� ���� ����
-- �����ϰ� �ִ� order ���̺��� �־ ���� �Ұ�
DELETE FROM vw_customer
WHERE custid = 3;

COMMIT;

-- ���� ���� �ֹ��� ���� ������ �˻�
create view vw_book_order as
select cs.name, bk.bookname, od.saleprice
from book bk, customer cs, orders od
where bk.bookid = od.bookid
  and cs.custid = od.custid;

select * from vw_book_order;

select count(*)
from vw_book_order;


-- VIEW ����
DROP VIEW vw_customer;