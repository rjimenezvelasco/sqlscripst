 SELECT [carrera], [estudiante],[ci],
        abc =STUFF(
                 (SELECT DISTINCT '|' + cod_materia +'|'+nombre+'|'+convert(varchar,grupo)+'|'+turno FROM [test].[dbo].[studCentral] WHERE ci =e.ci FOR XML PATH ('')), 1, 1, ''
               ) 
     
  FROM [test].[dbo].[studCentral] e
  GROUP BY [carrera], [estudiante],[ci]
