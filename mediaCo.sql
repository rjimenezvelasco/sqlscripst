--select [dbo].[MediaAcotada]( 4,0,0,72,6,0,1,0,0,4,5, 5,39)



declare @list table (id int ,score decimal(18,10));

insert into @list select 1,4;
insert into @list select 2,0;
insert into @list select 3,0;
insert into @list select 4,72;
insert into @list select 5,6;
insert into @list select 6,0;
insert into @list select 7,1;
insert into @list select 8,0;
insert into @list select 9,0;
insert into @list select 10,4;
insert into @list select 11,5;
insert into @list select 12,5;

select avg(cast(score as float)) from @list

DECLARE @med decimal(18,2),@tot1 int,@tot2 int,@porc decimal(18,9)
SET @porc=0.39;--0.39377495
SET @porc =round((@porc*12)/2,0,1)

print @porc;

SET @tot2 = 12-round(@porc,0,1)
SET @tot1 = @tot2-@porc

select top (@tot1)  *
from
( 
select top (@tot2) *
		from @list
		order by score desc
		) as y 
order by score asc

select avg(cast(score as float))
from
(
select top (@tot1) *
from
( 
select top (@tot2)  *
		from @list
		order by score desc
		) as y 
order by score asc
) x
 /*
select top (@tot_porc) percent *
from
( 
select top (@tot_porc) percent *
		from @list
		order by id desc
		) as y 
order by id asc

select avg(cast(score as float))
from
(
select top (@tot_porc) percent *
from
( 
select top (@tot_porc) percent *
		from @list
		order by score desc
		) as y 
order by score asc
) x

*/