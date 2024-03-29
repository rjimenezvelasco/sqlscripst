/****** Script for SelectTopNRows command from SSMS  ******/
SELECT proveedor,SUM(costo_usd)
  FROM [Stage].[dbo].[v_Compras]
  where YEAR(fecha_cie) =2018
  group by proveedor
  
  SELECT month(fecha_cie) as mes,SUM(costo_usd),proveedor
  FROM [Stage].[dbo].[v_Compras]
  where YEAR(fecha_cie) =2018  and proveedor  like 'JOHNSON &'
  group by month(fecha_cie),proveedor
  order by mes asc
  
   SELECT fecha_cie as mes,SUM(costo_usd),proveedor
  FROM [Stage].[dbo].[v_Compras]
  where YEAR(fecha_cie) =2018  and proveedor  like 'JOHNSON &'
  group by fecha_cie,proveedor
  order by mes asc