/****** Script for SelectTopNRows command from SSMS  ******/

select * FROM [Stage].[dbo].[test]

select * from orden_ccc

select * from [Stage].[dbo].[test]

select *
from
( SELECT    
       [flag]
      ,mes
	   ,valor
  FROM [Stage].[dbo].[test]
  ) src
  PIVOT
  (
   max(valor)
   FOR mes IN ([1], [2])
  
  ) as pp
  
  select * 
from 
(
    select store, week, xCount 
    from yt 
) src 
pivot 
(
    sum(xcount) 
    for week in ([1], [2], [3]) 
) piv; 