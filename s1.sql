/****** Script for SelectTopNRows command from SSMS  ******/
SELECT  [id]
      ,[ciudad]
      ,[Almacen]
      ,[item]
      ,[descripcion]
      ,[uni]
      ,[cu]
      ,[saldo_cant]
      ,[saldo_bs]
      ,[proveedor]
  FROM [Stage].[dbo].[stock]
  where almacen like 'C%'
  
  update [Stage].[dbo].[stock]
  set ciudad = 'Santa Cruz'
  where almacen like 'S%'
  