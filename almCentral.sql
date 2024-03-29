/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
[agencia]  
  FROM [Stage].[dbo].[Almacen_Empresa]
  where agencia in ('LV',
'L0',
'L4',
'L,',
'LQ')

insert into lg.Almacen_Encargado(id_almacen,id_encargado)
SELECT 
id,
12
  FROM [Stage].[dbo].[Almacen_Empresa]
  where agencia in (
'WR',
'WE',
'WX',
'W3',
'WT',
'WV',
'WF',
'W1',
'W2',
'WQ',
'WY',
'CO',
'C5',
'C9',
'C4'
)