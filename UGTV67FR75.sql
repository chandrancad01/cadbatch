use cad_mtb;

show tables;
select * from mtb_user_login;


update mtb_user_login set mail_id = 'aarif01cad@gmail.com' where reg_id=1001;

delimiter $$
drop procedure if exists updatedata;$$
create procedure updatedata( in mailp varchar(25),
in mailupdatep varchar(60),
in regCheckCNp varchar(60),
in regCheckCNValuep int,
in tablename varchar(62)
 )
 begin

set @updataStat=concat("update  ",tablename," set ",mailp,"=\'",mailupdatep,"\' where ",regCheckCNp,"=",regCheckCNValuep);
prepare stmt from  @updataStat;
execute stmt;

set @selectStat=concat("select * From ",tablename);
prepare stmt1 from  @selectStat;
execute stmt1;

 end $$
 delimiter ;
 call updatedata('mail_id','PULIs', 'reg_id',1001,'mtb_user_login');
 delimiter ##
 drop procedure if exists chandru;##
 create procedure chandru(
 in user_namep varchar(255),
 in reg_idcheckCNp varchar(255),
 in regCheckCNValuep int)
 begin
 set @updatastat=concat("update",'set',user_namep,"="\', reg_id,"\' where,)
 
 