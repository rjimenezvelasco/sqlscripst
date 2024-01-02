USE [DB_Araucaria]
GO

/****** Object:  View [dbo].[vw_plan_pagos]    Script Date: 09/27/2014 15:06:59 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO





ALTER VIEW [dbo].[vw_resumen_ejecutivo]
AS




select Proyecto,
       COUNT(nombre) as no_depto_vendidos,
       SUM(saldo) as saldo_total,
       SUM(costo_total) as costo_total,
       (SUM(saldo)/SUM(costo_total))*100 as porc_rec,
       no_deptos,
       costo_deptos 
       from vw_resumen
group by Proyecto,no_deptos,costo_deptos