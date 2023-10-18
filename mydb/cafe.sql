-- 음료 테이블 생성
create table drink(
drink_code varchar(3) primary key,
drink_name varchar2(30) not null
);

insert into drink values('A01', '아메리카노');
insert into drink values('B01', '카페라떼');
insert into drink values('C01', '레몬에이드');

commit;
drop table cafe_order;
rollback;

-- 카페 주문 테이블 생성
create table cafe_order(
order_no varchar2(30) primary key,
drink_code varchar2(3) not null,
order_cnt number not null,
foreign key(drink_code) references drink(drink_code)
);

insert into cafe_order
values ('2023100101','A01', 3);
insert into cafe_order
values ( '2023100102','B01', 1);
insert into cafe_order 
values ( '2023100103','A01', 2);

select 
a.drink_name, b.*
from drink a left join cafe_order b
on a.drink_code = b.drink_code;


drop table cafe_order;

