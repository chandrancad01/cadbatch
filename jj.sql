use ai_tamil;
create table tl_user_info (user_id int not null primary key,user_Name varchar(40),dob date, password varchar(20),
ph_number long);
select * from tl_user_info;
insert into tl_user_info values(100,'Tamil','2003-09-05','yoyo',7904761470);
insert into tl_user_info values(101,'Sindhu','2003-06-27','kiki',936026456);
insert into tl_user_info values(103,'Vishnu','2002-06-10','poco',936026789);
create table tml_user_infor (user_id int not null ,new_password varchar(20),
alter_number long,address varchar(50),email varchar(60),foreign key(user_id)references tl_user_info(user_id));
insert into tml_user_infor values(100,'edhukupo',9698285015,'trichy','tamil123@gmail.com');
insert into tml_user_infor values(101,'newone',909975015,'kovai','shindu123@gmail.com');
insert into tml_user_infor values(103,'nsp@ss',986754678,'chennai','vishnupriya123@gmail.com');
select * from tml_user_infor;
select * from tl_user_info join tml_user_infor on tl_user_info.user_id=tml_user_infor.user_id;
create table tmlt_info (created_by varchar(40),Modified_by varchar(40),created_on date,
modified_on date);
select * from tmlt_info;
insert into tmlt_info values('Tamil','sri','2023-12-14','2023-12-15');

