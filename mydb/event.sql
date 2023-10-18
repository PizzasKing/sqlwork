-- event ���̺� ����
create  table event(
event_no      number primary key,
event_name    varchar2(30) not null,
start_date    varchar2(20) not null,
end_date      varchar2(20) not null
);

create sequence seq_eno nocache;


insert into event(event_no, event_name, start_date, end_date)
values (seq_eno.NEXTVAL, '20% ���� ���� ����', '2023-10-10', '2023-10-20');
insert into event(event_no, event_name, start_date, end_date)
values (seq_eno.NEXTVAL, '���콺 �е� ����', '2023-11-15', '2023-11-25');
insert into event(event_no, event_name, start_date, end_date)
values (seq_eno.NEXTVAL, '���� ���� �佺Ƽ��', '2023-12-10', '2023-12-30');

commit;

select * from event;


-- �̺�Ʈ �Ⱓ���ȿ� ���並 �ۼ��� ������ ����ǰ�� �ִ� ���
-- �������̺�� �̺�Ʈ ���̺� ����
-- �ϴ��(�̺�Ʈ�� ����)
select a.event_name,
       b.member_id,
       b.content,
       b.regdate
from event a, product_review b
 where b.regdate 
  between a.start_date and a.end_date;
  
-- ��������(inner join on)
select a.event_name,
       b.member_id,
       b.content,
       b.regdate
from event a join product_review b
on b.regdate >= a.start_date and b.regdate <= a.end_date; 
  --between a.start_date and a.end_date;








