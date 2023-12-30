use chandran;
create table mobile_service(
sno int,
model varchar(255),
emis int,
service varchar(255));
select * from mobile_service;
insert into mobile_service
(sno, model, emis, service)
values(01, "samsang m12", 123445, "display change"),
(02, "moto gp5", 65435, "softer change"),
(03, "oppo g12", 789594, "battery"),
(04, "realmi", 078986, "sound problem"),
(05, "redmi 10", 76967, "touch problem");
update mobile_service set address=
case Sno
when 01 then 'allithurai'
when 02 then 'karur'
when 03 then 'trichy'
when 04 then 'porur' 
when 05 then 'chennai'
end
where Sno in (01,02,03,04,05);
truncate mobile_service;
delete from mobile_service where sno=1;
 delete from mobile_service where sno=4;
 select * from mobile_service; 
 insert into mobile_service ( sno, model, emis, service, address)
 values(01, "samsang", 43545, "display change", "pettavaithalai");
describe mobile_service;
delimiter $$
create procedure moon()
begin
insert into mobile_service
(sno, model, emis, service, address)
values(01, "samsang m12", 123445, "display change", "alliththurai"),
(02, "moto gp5", 65435, "softer change", "karur"),
(03, "oppo g12", 789594, "battery","trichy"),
(04, "realmi", 078986, "sound problem", "porur"),
(05, "redmi 10", 76967, "touch problem", "chennai");
select * from mobile_service;
end $$
call moon;
truncate mobile_service;













