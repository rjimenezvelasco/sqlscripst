 declare @fecha_actual date, @fecha_fin date = '2019-07-31'
  set @fecha_fin = DATEADD(dd,-(DAY(@fecha_fin)),@fecha_fin)
   
  print @fecha_fin;
  declare @dif int = 0
  declare @fecha_ini date=DATEADD(mm, -12, @fecha_fin)
  
  set @fecha_ini = DATEADD(dd,-(DAY(DATEADD(mm,1,@fecha_ini))-1),DATEADD(mm,1,@fecha_ini))
	
  print @fecha_ini;
  
--2019-06-30
--2018-07-01
select * 
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
		FOR mes IN ([6-2019],[5-2019],[4-2019],[3-2019],[2-2019],[1-2019],[1-2018],[2-2018],[3-2018],[4-2018],[5-2018],[6-2018])
		
		) AS PivotTable;