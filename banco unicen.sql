SELECT [id_carrera]
      ,[cod_carrera]
      ,[nombre]
  FROM [test].[dbo].[carrera]
GO

SELECT distinct e.[COD_ALUNMO]
      ,e.[NOMBRES]
      ,e.[AP_PATERNO]
      ,e.[AP_MATERNO]
      ,e.[CI]
      ,e.[TELEFONO]
      ,e.[EMAIL]
      ,e.[FACTURAR A]
      ,e.[NIT]
      ,e.ID_CARRERA
      ,c.nombre as carrera
  FROM [test].[dbo].[Estud'] e
  INNER JOIN carrera c on e.ID_CARRERA = c.id_carrera
  where e.ITEM_SEGUIMIENTO in (1,2,3,4,5,13,16,52,53,55,56)
  order by e.AP_PATERNO,e.ap_materno asc

