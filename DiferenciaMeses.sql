/****** Script for SelectTopNRows command from SSMS  ******/

select max(diferencia)
from(
SELECT  [PlanID]
      ,[ContratoID]
      ,[NoCuota]
      ,[Tipo]
      ,[CuotaProg]
      ,[FechaProg]
      ,[CuotaPago]
      ,[FechaPago]
      ,case when year(FechaPago)=year(fechaProg) then month(FechaPago) - month(fechaProg)
      else month(FechaPago) - month(fechaProg)+12 end as diferencia
      
      ,[ReciboID]
      ,[Observacion]
      ,[ComisionID]
  FROM [DB_Editorial].[dbo].[PlanPagos]
  where contratoID = 3789 and reciboID is not null
) as x