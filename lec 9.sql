
create table takes 
(ssn integer, c_id string, grade string);

insert into takes(ssn, c_id , grade )
values(123, '15-413','A');
insert into takes(ssn, c_id , grade )
values(234, '15-413','B');

create table class 
(c_id string, c_name string, units integer);

insert into class(c_id , c_name , units)
values( '15-413','s.e.', 2);
insert into class(c_id , c_name, units)
values( '15-412','o.s.', 2 );

select ssn, c_name
from takes, class
where takes.c_id = class.c_id;
