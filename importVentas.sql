INSERT INTO [BI_Gedesa].[dbo].[Ventas]
           ([CIUDAD]
           ,[TIPO]
           ,[PERIODO]
           ,[NUMFACT]
           ,[DOCUMENTO]
           ,[fechav]
           ,[FECHA]
           ,[MES]
           ,[ITEM]
           ,[DESCRIPCION]
           ,[CLIENTE]
           ,[VE]
           ,[NOMBREVENDEDOR]
           ,[CANTIDAD]
           ,[IMPORTEBS]
           ,[UN]
           ,[PROVEEDOR]
           ,[LINEA]
           ,[CUENTA],
           [DESCRIPCION2])
  SELECT 
      [CIUDAD]
      ,[TIPO]
      ,[PERIODO]
      ,[NUMFACT]
      ,[DOCUMENTO]
      ,[fechav]
      ,[FECHA]
      ,[MES]
      ,[ITEM]
      ,[DESCRIPCION]
      ,[CLIENTE]
      ,[VE]
      ,[NOMBREVENDEDOR]
      ,[CANTIDAD]
      ,[IMPORTEBS]
      ,[UN]
      ,[PROVEEDOR]
      ,[LINEA]
      ,[CUENTA]
      ,[DESCRIPCION2]
  FROM [Stage].[dbo].[ventas18]
