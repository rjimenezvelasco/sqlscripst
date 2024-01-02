SELECT 
PROVEEDOR,
item,
descripcion, 
isnull([1],0) as [1],
isnull([2],0) as [2],
isnull([3],0) as [3],
isnull([4],0) as [4],
isnull([5],0) as [5],
isnull([6],0) as [6],
isnull([7],0) as [7],
isnull([8],0) as [8],
isnull([9],0) as [9],
isnull([10],0) as [10],
isnull([11],0) as [11],
isnull([12],0) as [12],
isnull([1],0)+ isnull([2],0) + isnull([3],0)+ isnull([4],0)+isnull([5],0)+
isnull([6],0)+isnull([7],0)+isnull([8],0)+isnull([9],0)+isnull([10],0)+isnull([11],0)+isnull([12],0) as SumTotal,
dbo.Median([1], [2], [3], [4],[5],[6],[7],[8],[9],[10],[11],[12]) as Sugerencia_Promedio,
dbo.PromLast6Mes([6],[7],[8],[9],[10],[11]) as Prom,
Round(dbo.PromLast6Mes([6],[7],[8],[9],[10],[11]),0) as Promedio_seis_meses

--into total_prov_item
FROM
(SELECT
	  PROVEEDOR,
	  item,
	  descripcion
      ,mes
      ,isnull(CANTIDAD,0) as Cantidad
    FROM [Stage].[dbo].[ventas]
   -- WHERE PROVEEDOR = 'JOHNSON &'
    ) AS SourceTable 
PIVOT
(
SUM(Cantidad) 
FOR mes IN ([1], [2], [3], [4],[5],[6],[7],[8],[9],[10],[11],[12])

) AS PivotTable