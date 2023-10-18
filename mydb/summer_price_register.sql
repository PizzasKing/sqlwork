-- 수강료 테이블
create table summer_price(
subject varchar2(20) primary key,
price number
);

insert into summer_price values('C', 30000);
insert into summer_price values('Java', 45000);
insert into summer_price values('Python', 40000);

-- 여름학기 등록 테이블
create table summer_register(
sid number primary key,
subject varchar2(20),
foreign key(subject) references summer_price(subject)
);

insert into summer_register values(100, 'C');
insert into summer_register values(101, 'Java');
insert into summer_register values(200, 'Python');
insert into summer_register values(201, 'Java');

commit;

drop table summer_price;
drop table summer_register;



select * from summer_price;


update summer_price set price =40000 where subject = 'Java';


select * from summer_price;







