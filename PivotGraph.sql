USE [Stage]
GO

/****** Object:  View [dbo].[v_Graph_CompraVentas]    Script Date: 02/25/2019 23:36:32 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO








ALTER  VIEW [dbo].[v_Graph_CompraVentas]
AS

select 
 [mes_compra],
 [anio_compra],
 dbo.ToFecha(mes_compra,anio_compra) as fecha,
 left(DATENAME(MONTH, dbo.ToFecha(mes_compra,anio_compra)),3)+'/'+convert(varchar,anio_compra) as mes_an,
 prov_compra,
 Compra,
 Venta
 
 FROM
( SELECT [mes_compra]
      ,[anio_compra]
      ,valor
      ,[prov_compra]
      ,[tipo]
  FROM [Stage].[dbo].[v_ComprasVentas]
  --where prov_compra like 'JOHNSON &' and anio_compra in (2018,2019)
    ) AS SourceTable 
PIVOT
(
max(valor)
FOR tipo IN (Compra, Venta)

) AS PivotTable



GO


