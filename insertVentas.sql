INSERT INTO [Stage].[dbo].[ventas18]
           ([CIUDAD]
           ,[TIPO]
           ,[PERIODO]
           ,[NUMFACT]
           ,[DOCUMENTO]
           ,[FECHA]
           ,[MES]
           ,[ITEM]
           ,[DESCRIPCION]
           ,[CLIENTE]
           ,[VE]
           ,[NOMBREVENDEDOR]
           ,[CANTIDAD]
           ,[IMPORTEBS]
		   ,IMPORTEUSD
           ,[UN]
		   ,centro
           ,[PROVEEDOR]
           ,[LINEA]
           ,[CUENTA]
           ,[DESCRIPCION2])
  SELECT [CIUDAD]
      ,[TIPO]
      ,[PERIODO]
      ,[NUMFACT]
      ,[DOCUMENTO]
      ,[FECHA]
      ,month(Fecha) 
      ,[ITEM]
      ,[DESCRIPCION]
      ,[CLIENTE]
      ,[VE]
      ,[NOMBREVENDEDOR]
      ,[CANTIDAD]
      ,[IMPORTEBS]
	  ,importeUSD
      ,[UN]
	  ,centro
      ,[PROVEEDOR]
      ,[LINEA]
      ,[CUENTA]
      ,[DESCRIPCION2]
  FROM [Stage].[dbo].[ventasTemp]

 