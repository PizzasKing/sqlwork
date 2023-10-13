-- ��¥ �ð� �Լ�
-- ���� ��¥ ���
SELECT SYSDATE FROM dual;

-- ���� ��¥�� �ð�
SELECT TO_CHAR(SYSDATE, 'YYYY') �⵵,
       TO_CHAR(SYSDATE, 'MM') ��,
       TO_CHAR(SYSDATE, 'DD') ��,
       TO_CHAR(SYSDATE, 'YYYY-MM-DD') ��¥
FROM dual;

SELECT TO_CHAR(SYSDATE, 'HH:MI:SS') �ð�,
       TO_CHAR(SYSTIMESTAMP, 'YYYY/MM/DD HH:MI:SS') ��¥�ͽð�
FROM dual;

-- 10�� ���� ��¥ ���
SELECT SYSDATE - 10 FROM DUAL;
SELECT SYSDATE + 10 FROM DUAL;

-- Ư�� ��¥���� 10�� ��, �� ���
-- TO_DATE(���ڿ�(��¥))
SELECT TO_DATE('2023-09-01') + 10 FROM DUAL;

-- ���� ���ϰ� ����
-- ADD_MONTHS()
SELECT ADD_MONTHS(SYSDATE, 3) ��� FROM DUAL;
SELECT ADD_MONTHS(SYSDATE, -3) ��� FROM DUAL;
SELECT ADD_MONTHS(TO_DATE('2023-5-1'), 3) ��� FROM DUAL;

-- ������ ����ϱ�
-- MONTHS_BETWEEN(������, ������)
SELECT MONTHS_BETWEEN(TO_DATE('2023-12-31'), TO_DATE('2023-1-1')) �Ѱ�����
FROM DUAL;

-- orders ���̺��� ��¥ �ð��Լ� ����ϱ�
-- ������ �ֹ��Ϸκ��� 10���� ������ Ȯ���Ѵ�
SELECT orderid �ֹ���ȣ,
       orderdate �ֹ���,
       TO_DATE(orderdate) + 10 Ȯ����
from orders;

-- �ֹ��Ͽ� 3���� ���ϰ�, ����
-- ����: �ֹ���ȣ�� 6���� 10������ ���
SELECT orderid �ֹ���ȣ,
       orderdate �ֹ���,
       ADD_MONTHS(orderdate, 3) ���ϱ���,
       ADD_MONTHS(orderdate, -3) ������
from orders
--where orderid >= 6 AND orderid <= 10;
where orderid between 6 and 10;

-- �ֹ���ȣ�� 10�� ������ �ֹ��Ϸκ��� ���ñ����� �� �������� ���Ͻÿ�
select 
       months_between(sysdate, orderdate)
from orders
where orderid =10;

-- ��ȯ �Լ� : to_number() : ���ڸ� ���ڷ� ��ȯ����
select to_number('320') from dual;



