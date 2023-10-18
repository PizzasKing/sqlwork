-- �����б� ������, ��� ���̺�
select * from summer_price;
select * from summer_register;

-- �л��� ��� ���������� �˻��Ͻÿ�
select b.sid,
       b.subject,
       a.price
from summer_price a, summer_register b
where a.subject = b.subject;

-- ���� ������ �հ�
insert into summer_register values(301, 'Python');

select
subject,
sum(price)
from summer_price
group by subject;

-- ���� ������ �հ� �� ��ü �Ѱ踦 ���Ͻÿ�
-- rollup(), cube()
select 
NVL(b.subject, '�Ѱ�'),
sum(a.price)
from summer_price a, summer_register b
where a.subject = b.subject
group by rollup(b.subject);

