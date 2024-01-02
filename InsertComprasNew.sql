INSERT INTO [Stage].[bi].[Importacion]
           ([cod_import]
           ,[detalle]
           ,[fecha_inic]
           ,[fecha_cierre]
           ,[c6]
           ,[r]
           ,[item]
           ,[descripcion]
           ,[pedido]
           ,[costo_sus]
           ,[valor_sus]
           ,[Proveedor])
 SELECT [cod_import]
      ,[detalle]
      ,case when fecha_inic='.NULL.' then convert(date,'1900/01/01')
      else convert(date,fecha_inic) end
      ,case when [fecha_cierre]='/  /' or [fecha_cierre]='.NULL.' then convert(date,'1900/01/01')
      else convert(date,[fecha_cierre]) end
      ,[c6]
      ,[r]
      ,[item]
      ,[descripcion]
      ,[pedido]
      ,[costo_sus]
      ,[valor_sus]
      ,[Proveedor]
  FROM [Stage].[bi].[Importacion_tmp]
  
