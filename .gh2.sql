use chandran;
select * from MOVIE_ticket;
select * from chand;
select* from MOVIE_ticket, chand;
select* from MOVIE_ticket h1 RIGHT JOIN chand h2 on h1.NAME=h2.id;

DELIMITER $$
create procedure CHAND()
begin
select*from chand;
end $$
call CHAND();
