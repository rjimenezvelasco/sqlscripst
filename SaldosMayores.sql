/****** Script for SelectTopNRows command from SSMS  ******/
SELECT *
--fecha,cuenta,deta,no_comprobante,debe, haber
  FROM [Finanzas].[dbo].[Mayor_Proc]
  where cuenta ='10101001' and deta='Saldo Inicial' and id_empresa = 1
  
  SELECT fecha,cuenta,deta,no_comprobante,debe,haber
  FROM [Finanzas].[dbo].[Mayor_Proc]
  where cuenta ='10101001' and deta!='Saldo Inicial' and id_empresa = 1
  
 