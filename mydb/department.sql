-- department 테이블 생성
create table department(
deptno varchar2(4) primary key,
deptname varchar2(20) not null,
office varchar2(20)
);

insert into department values ('1000', '인사팀', '서울');
insert into department values ('1001', '전산팀', '인천');
insert into department values ('1002', '전산팀', '수원');
insert into department(deptno, deptname) values ('1003', '영업팀');

create table employee(
empno varchar2(3) primary key,
empname varchar2(20) not null,
sal number(10), 
createdate Date default sysdate,
deptno varchar2(4),
foreign key(deptno) references department(deptno)  -- 외래키
);

insert into employee values (100, '이강', 2500000, sysdate, '1000');
insert into employee values (101, '김산', 2000000, sysdate, '1001');
insert into employee values (102, '박달', 3000000, sysdate, '1002');
insert into employee values (103, '강태양', 3500000, sysdate, '1000');
insert into employee values (104, '최우주', 5000000, sysdate, '1001');

-- 부서별 급여 총액을 구하시오
select deptno, sum(sal) 급여총액
from employee 
group by deptno;

-- 부서이름과 부서별 급여 총액을 출력하시오
-- employee, department 테이블 사용(조인)
select a.deptno, a.deptname, sum(b.sal)
from department a, employee b
where a.deptno = b.deptno
group by a.deptno, a.deptname;
























