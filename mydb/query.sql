-- ���� ����(Sub Query)

-- ������ ������ ���� ���� ������ �˻��Ͻÿ�
SELECT MAX(price) FROM book;



-- �����߿��� ���� ��� ������ �̸��� �˻��Ͻÿ�
SELECT bookname, price
FROM book
WHERE price = (SELECT MAX(price) FROM book);

-- ������ ������ ���� �ִ� ���� �̸��� �˻��Ͻÿ�
SELECT name
FROM customer
WHERE custid IN(SELECT custid FROM orders);

-- ���ι�� : customer, orders
-- ������ ������ ���� �ִ� ���� �̸��� �˻��Ͻÿ�
SELECT DISTINCT cus.name
FROM customer cus, orders ord
WHERE cus.custid = ord.custid;
