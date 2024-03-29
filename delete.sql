/****** Script for SelectTopNRows command from SSMS  ******/
SELECT distinct fecha
  FROM [Stage].[dbo].[stockHist]
  group by fecha
  
  truncate table  dbo.AnalisisProm
  
  delete from dbo.PedidoSug_Det
  delete from dbo.PedidoSug
  
  select distinct fecha  from dbo.AnalisisProm
  order by fecha desc
  
  select top 100 * FROM [Stage].[dbo].[ventas18]
  order  by fecha desc
  
  
  
  select * from dbo.AnalisisProm
  where proveedor  like 'JO%'
  and fecha='2019-02-28'
