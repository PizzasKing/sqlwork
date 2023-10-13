-- ���� Ÿ�� ���� �Լ�
-- ���밪 ���ϱ� : ABS()
-- ���� ���̺� : dual
SELECT abs(-10) FROM dual;

-- �ݿø� : ROUND(����, �ڸ���)
SELECT TRUNC(123.67, 1) FROM dual;
SELECT TRUNC(123.67, 0) FROM dual;
SELECT TRUNC(123.67, 2) FROM dual;

-- �ŵ����� : POWER(��, ����)
SELECT POWER(2, 3) FROM dual;

-- ���� Ÿ��
-- �ҹ��ڷ� �����ϱ� : LOWER('ABCD')
-- �빮�ڷ� �����ϱ� : UPPER('abcd')
SELECT LOWER('ABCD') FROM dual;
SELECT UPPER('abcd') FROM dual;


-- ���ڿ��� �Ϻκ��� ���� : SUBSTR(���ڿ�, �ε���, �ڸ���)
SELECT SUBSTR('abcd', 1, 2) FROM dual;

-- ���ڿ��� ã�� �ٲٱ�: REPLACE(���ڿ�, ����������, �����Ĺ���)
SELECT REPLACE('abcd', 'c', 'e') FROM dual;

-- ���ڿ��� ���� : LENGTH(���ڿ�)
SELECT LENGTH('abcd') FROM dual;

-- ����ŷ : LPAD(���ڿ�, ����, Ư������) - ���ʺ��� Ư�� ���ڷ� ä�� �ݴ��  RPAD
SELECT LPAD('today', 10, '*') FROM dual;
SELECT RPAD('today', 10, '*') FROM dual;

-- �ֹ����̺�
-- ���� ��� �ֹ� �ݾ��� �ݿø�
SELECT SUM(saleprice) AS �հ�ݾ�,
       COUNT(saleprice) as �ֹ��Ǽ�,
       round(avg(saleprice), -2) as ����ֹ��ݾ�
FROM orders
group by custid;

-- �������̺�
-- å������ ���ڼ�
SELECT bookname,
       LENGTH(bookname) as ���ڼ�,
       LENGTHB(bookname) as ����Ʈ��
FROM book;

-- �౸�� �󱸷� �����Ͽ� �˻�
SELECT bookname,
       replace(bookname, '�౸', '��') as bookname
FROM book;

-- �� ���̺� 
SELECT SUBSTR(name, 1, 1) ��,
       COUNT(*) �ο�
FROM customer
GROUP BY SUBSTR(name, 1, 1);
