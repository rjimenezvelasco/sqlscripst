/****** Script for SelectTopNRows command from SSMS  ******/
;With 
T2 as 
(select distinct
 load_id,
 load_datetimestamp
 from dbo.VeryLargeTable
 where datediff(day,load_datetimestamp,getDate())=0)

select * from dbo.VeryLargeTable
where load_id = (select min(load_ID) from T2)