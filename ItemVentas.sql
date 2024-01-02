 declare @fecha_actual date, @fecha_fin date = '2019-08-09'
  set @fecha_fin = DATEADD(dd,-(DAY(@fecha_fin)),@fecha_fin)
   
  print @fecha_fin;
  declare @dif int = 0
  declare @fecha_ini date=DATEADD(mm, -12, @fecha_fin)
  
  set @fecha_ini = DATEADD(dd,-(DAY(DATEADD(mm,1,@fecha_ini))-1),DATEADD(mm,1,@fecha_ini))
	
  print @fecha_ini;
  
--2019-06-30
--2018-07-01
--DROP TABLE Item_Ventas


select 
   PROVEEDOR,
	centro,
	item,
	descripcion,
 isnull([7-2019],0) as[7-2019],
 isnull([6-2019],0) as [6-2019],
 isnull([5-2019],0) as [5-2019],
 isnull([4-2019],0) as [4-2019],
 isnull([3-2019],0) as [3-2019],
 isnull([2-2019],0) as [2-2019],
 isnull([1-2019],0) as [1-2019],
 isnull([12-2018],0) as [12-2018],
 isnull([11-2018],0) as [11-2018],
 isnull([10-2018],0) as [10-2018],
 isnull([9-2018],0) as [9-2018],
 isnull([8-2018],0) as [8-2018]
into Item_Ventas
from (
SELECT
			  PROVEEDOR,
			  centro,
			  item,
			  descripcion
			  --,CHAR(39)+
			   ,convert(varchar,MONTH(fecha)) +'-'+convert(varchar,YEAR(fecha)) as mes
			  ,isnull(CANTIDAD,0) as Cantidad
			FROM [Stage].[dbo].[ventas18]
			where fecha >= @fecha_ini and fecha<=@fecha_fin
		     --and  item ='11881'
			) AS SourceTable 
		PIVOT
		(
		SUM(Cantidad) 
		FOR mes IN ([7-2019],[6-2019],[5-2019],[4-2019],[3-2019],[2-2019],[1-2019],[12-2018],[11-2018],[10-2018],[9-2018],[8-2018])
		
		) AS PivotTable;
		