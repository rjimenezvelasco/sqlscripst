USE [Stage]
GO

/****** Object:  View [dbo].[v_Analisis]    Script Date: 02/24/2019 22:02:04 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO






CREATE  VIEW [dbo].[v_Compras]
AS

SELECT  [id_compra]
      ,[detalle]
      ,[fecha_ini]
      ,[fecha_cie]
      ,[C6]
      ,[ped]
      ,[recibido]
      ,[R9]
      ,[item]
      ,[descripcion]
      ,[pedido]
      ,[costo_usd]
      ,[valor_usd]
      ,[proveedor]
  FROM [BI_Gedesa].[dbo].[Compras]

GO


