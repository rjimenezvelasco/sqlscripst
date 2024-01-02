USE [DB_Araucaria]
GO

/****** Object:  View [dbo].[vw_plan_pagos]    Script Date: 09/27/2014 15:06:59 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO





CREATE VIEW [dbo].[vw_resumen]
AS

SELECT  
       proyecto
       ,nombre
	   ,sum(importe_pago) as saldo
       ,costo_total
       ,no_deptos
       ,costo_deptos
       
  FROM [DB_Araucaria].[dbo].[vw_plan_pagos_propietario]
  group by proyecto,nombre,costo_total,no_deptos,costo_deptos 