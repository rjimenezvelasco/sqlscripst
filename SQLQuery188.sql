/****** Script for SelectTopNRows command from SSMS  ******/
SELECT *
  FROM [Stage].[lg].[Almacen_Aprob]
  
  select * from Almacen_Empresa
  where agencia in ('WR','WQ')
  
  select name,email from sec_users
  where usr_id in 
  (
   select id_encargado from lg.Almacen_Aprob
    where id_almacen =200 -- {ciu_almacen_salida}
   )
 
 SELECT usr_id, name 
FROM dbo.sec_users 
WHERE tipo_usr ='APROB' 
ORDER BY name asc
