/****** Script for SelectTopNRows command from SSMS  ******/
select * from dbo.estudiantesTorre1
select * from dbo.estuduTorre

SELECT 
	   [carrera]
      ,[estudiante]
      ,[ci]
      ,[cod_materia]
      ,[nombre]
      ,[grupo]
      ,[turno]
  FROM [test].[dbo].[studTorre] 
 ORDER BY [carrera], [estudiante],[ci]
 
  --SELECT  DISTINCT '|' + cod_materia +'|'+nombre+'|'+convert(varchar,grupo)+'|'+turno FROM [test].[dbo].[studTorre]
  
  SELECT [carrera], [estudiante],[ci],
        abc =STUFF(
                 (SELECT DISTINCT '|' + cod_materia +'|'+nombre+'|'+convert(varchar,grupo)+'|'+turno FROM [test].[dbo].[studCentral] WHERE ci =e.ci FOR XML PATH ('')), 1, 1, ''
               ) 
     
  FROM [test].[dbo].[studCentral] e
  GROUP BY [carrera], [estudiante],[ci]
  
  