truncate table ItemPU
go 


with pu as
(
SELECT 
   ROW_NUMBER() OVER(PARTITION BY item ORDER BY item,fecha_cierre DESC) AS rn,
	cod_import,
	descripcion,
	fecha_cierre,
	item,pedido,
	valor_sus, 
	ROUND(valor_sus/pedido,2) as pu,
	Proveedor
   --ROUND(valor_sus/pedido,2) as pu
  FROM [Stage].[bi].[Importacion]
  WHERE fecha_cierre >'1900/01/01'
   and valor_sus >0
)
INSERT INTO [Stage].[dbo].[ItemPU]
           ([cod_import]
           ,[fecha_cierre]
           ,[item]
           ,[descripcion]
           ,[pu]
           ,[Proveedor])
select cod_import,fecha_cierre,item,descripcion,pu,Proveedor 
from pu
where rn = 1 
  