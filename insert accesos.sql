/****** Script for SelectTopNRows command from SSMS  ******/
SELECT *
  FROM [Stage].[dbo].[sec_users_apps]
  

insert into [Stage].[dbo].[sec_users_apps]  (login,app_name,priv_access,priv_insert,priv_delete,priv_update,priv_export,priv_print)
values ('ale','grid_dbo_Reserva_Cab_New','Y','Y','Y','Y','Y','Y')