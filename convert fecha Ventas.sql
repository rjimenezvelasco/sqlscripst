/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
      Fecha, CONVERT(date,fecha)
  FROM dbo.Ventas
  
  update dbo.Ventas
  set FECHA=CONVERT(date,FECHA)
