-- ���� �б� ���̺�
create table summer_class(
sid number,
subject varchar2(20),
price number
);

insert into summer_class values(100, 'C', 30000);
insert into summer_class values(101, 'Java', 45000);
insert into summer_class values(200, 'Python', 40000);
insert into summer_class values(201, 'Java', 45000);


commit;
-- �����б⸦ �����ϴ� �л��� �й��� �����ϴ� ������?
select sid, subject from summer_class;

-- Python ������ �������?
select price Python������ from summer_class where subject like 'Python';

-- �����б⸦ ��� �л����� ������ �Ѿ���?
select count(sid) �л���, sum(price) �Ѿ� from summer_class; 
select * from summer_class;

delete from summer_class where sid = 200;

-- ���� �̻�
-- C++ ���� ���� : ��û�� �л��� ����
insert into summer_class values (null, 'c++', 35000);

select count(*) from summer_class;

select count(sid) from summer_class;

-- �����̻�
-- Java �����ᰡ 45,000������ 40,000���� ����
update summer_class set price = 40000 where subject = 'Java';

-- ���� update���� ����ó�� �̻� ���� �߻�
update summer_class set price = 40000 where subject = 'Java'
and sid = 101;

select price from summer_class where subject = 'JAVA';

rollback;























