/****** Script for SelectTopNRows command from SSMS  ******/
SELECT	
      cuenta,
      cuedes
     
  FROM [StageServer].[dbo].[Cuentas]
  where 
  --cuenta like 'C0%'

  cuedes like '%CAJA%SALUD%' or cuedes like'%HOSPITAL%'  or cuedes like '%INSTITU%'