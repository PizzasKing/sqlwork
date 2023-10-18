-- 여름 학기 테이블
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
-- 계절학기를 수강하는 학생의 학번과 수강하는 과목은?
select sid, subject from summer_class;

-- Python 강좌의 수강료는?
select price Python수강료 from summer_class where subject like 'Python';

-- 여름학기를 듣는 학생수와 수강료 총액은?
select count(sid) 학생수, sum(price) 총액 from summer_class; 
select * from summer_class;

delete from summer_class where sid = 200;

-- 삽입 이상
-- C++ 강좌 개설 : 신청한 학생이 없음
insert into summer_class values (null, 'c++', 35000);

select count(*) from summer_class;

select count(sid) from summer_class;

-- 수정이상
-- Java 수강료가 45,000원에서 40,000으로 변경
update summer_class set price = 40000 where subject = 'Java';

-- 만약 update문을 다음처럼 이상 현상 발생
update summer_class set price = 40000 where subject = 'Java'
and sid = 101;

select price from summer_class where subject = 'JAVA';

rollback;























