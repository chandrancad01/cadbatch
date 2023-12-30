use chandran;
create table chand(
id int  NOT NULL,
NAME varchar(50),
ADDRESS varchar(255),
age int(10) ,
phone long);
select* from chand;
use chandran;
insert into  chand(
id,NAME,
ADDRESS,
age,
phone)
values(11,"basheer", "pettavaithalai", 21, 2346776666565),
(12,"krish", "musiri",23,98765677899),
(13,"gopal", "perur", 23, 90876564332);
alter table chand add column city varchar(50);
update chand set city="chennai"
where age=21;


