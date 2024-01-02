
select t.flag,ccc.[1],ccc.[2] from
(
select flag,[1], [2]
from
( 

SELECT 
       [flag]
      ,month(fecha) as mes
	   ,value as valor
  FROM [Stage].[dbo].[v_ccc]
  where id_pedido_sug in (14,15)
  ) src
  PIVOT
  (
   max(valor)
   FOR mes IN ([1], [2])
  
  ) as pp
)as ccc
inner join orden_ccc t on ccc.flag = t.tipo
order by t.id asc


select * from  orden_ccc

select t.flag,[1],[2] from tmp_ccc c
inner join orden_ccc t on c.flag = t.tipo
order by t.id asc

