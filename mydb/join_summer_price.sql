-- 계절학기 수강료, 등록 테이블
select * from summer_price;
select * from summer_register;

-- 학생의 모든 수강정보를 검색하시오
select b.sid,
       b.subject,
       a.price
from summer_price a, summer_register b
where a.subject = b.subject;

-- 과목별 수강료 합계
insert into summer_register values(301, 'Python');

select
subject,
sum(price)
from summer_price
group by subject;

-- 과목별 수강료 합계 및 전체 총계를 구하시오
-- rollup(), cube()
select 
NVL(b.subject, '총계'),
sum(a.price)
from summer_price a, summer_register b
where a.subject = b.subject
group by rollup(b.subject);

