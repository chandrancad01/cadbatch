use ai_tamil;
show tables;
select*from person_det;
delimiter &&
drop procedure if exists singleupdate;&&
create procedure singleupdate
 
(
 in tablename varchar(100),
 in columnname varchar(20),
in valuechange varchar(100),
in idname varchar(10),
in idparam int)
begin
set @statement= concat('update ',tablename,' set ',columnname,' =\'',valuechange,'\'',' where ',idname,'=',idparam);
prepare stmt from @statement;
execute stmt ;
 end &&
 
delimiter ;
call singleupdate('std_det','name','sri','sno',1);
select *from std_det;