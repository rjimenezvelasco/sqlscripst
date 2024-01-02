/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP 1000 [VerificaID]
      ,[ContratoID]
      ,[Fecha]
      ,[Descripcion]
      ,[VerificadorID]
      ,[Estado]
      ,[Fecha_Creacion]
      ,[UserID_Creacion]
      ,[Alerta]
      ,[FechaAlerta]
      ,[UserReasignarID]
      ,[FechaReasignacion]
      ,[UserIDReasignado]
  FROM [DB_Editorial].[dbo].[Contrato_Verificacion]
  where contratoID = 3371
  
  update [DB_Editorial].[dbo].[Contrato_Verificacion]
  set UserID_Creacion ='rjimenez'
  where VerificaID = 4088
  --contratoID = 3371
