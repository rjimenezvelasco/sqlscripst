/****** Script for SelectTopNRows command from SSMS  ******/
SELECT  count(*)
       ,proyecto
	   ,[no_departamento]
      ,[nombre]
      ,[paterno]
      ,[materno]
  FROM [DB_Araucaria].[dbo].[vw_plan_pagos_propietario]
  group by proyecto,no_departamento,nombre,paterno,materno