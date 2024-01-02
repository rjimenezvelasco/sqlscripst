INSERT INTO [Stage].[dbo].[almacen]
           ([codigo])
 SELECT distinct agen
  FROM [Stage].[dbo].[stockHistNew]


