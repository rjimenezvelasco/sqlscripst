/****** Script for SelectTopNRows command from SSMS  ******/
SELECT  distinct e.* into studCentral
--into studTorre
  FROM [test].[dbo].[estudiantesCentral] e
 inner join [test].[dbo].[estudiantes_1] ed
 on e.estudiante = ed.estudiante and ed.ci is null