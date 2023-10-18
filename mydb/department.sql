-- department ���̺� ����
create table department(
deptno varchar2(4) primary key,
deptname varchar2(20) not null,
office varchar2(20)
);

insert into department values ('1000', '�λ���', '����');
insert into department values ('1001', '������', '��õ');
insert into department values ('1002', '������', '����');
insert into department(deptno, deptname) values ('1003', '������');

create table employee(
empno varchar2(3) primary key,
empname varchar2(20) not null,
sal number(10), 
createdate Date default sysdate,
deptno varchar2(4),
foreign key(deptno) references department(deptno)  -- �ܷ�Ű
);

insert into employee values (100, '�̰�', 2500000, sysdate, '1000');
insert into employee values (101, '���', 2000000, sysdate, '1001');
insert into employee values (102, '�ڴ�', 3000000, sysdate, '1002');
insert into employee values (103, '���¾�', 3500000, sysdate, '1000');
insert into employee values (104, '�ֿ���', 5000000, sysdate, '1001');

-- �μ��� �޿� �Ѿ��� ���Ͻÿ�
select deptno, sum(sal) �޿��Ѿ�
from employee 
group by deptno;

-- �μ��̸��� �μ��� �޿� �Ѿ��� ����Ͻÿ�
-- employee, department ���̺� ���(����)
select a.deptno, a.deptname, sum(b.sal)
from department a, employee b
where a.deptno = b.deptno
group by a.deptno, a.deptname;
























