/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP 1000 [login]
      ,[app_name]
      ,[priv_access]
      ,[priv_insert]
      ,[priv_delete]
      ,[priv_update]
      ,[priv_export]
      ,[priv_print]
  FROM [Stage].[dbo].[sec_users_apps]
  where login = 'b5'

  insert into [Stage].[dbo].[sec_users_apps]  (login,app_name,priv_access,priv_insert,priv_delete,priv_update,priv_export,priv_print)
values ('b5','grid_dbo_Reserva_Cab_2','Y','Y','Y','Y','Y','Y')

 insert into [Stage].[dbo].[sec_users_apps]  (login,app_name,priv_access,priv_insert,priv_delete,priv_update,priv_export,priv_print)
values ('b5','grid_reporte_reservas','Y','Y','Y','Y','Y','Y')


insert into [Stage].[dbo].[sec_users_apps]  (login,app_name,priv_access,priv_insert,priv_delete,priv_update,priv_export,priv_print)
values ('b5','grid_dbo_Reserva_Det_Aprobacion',NULL,NULL,NULL,NULL,NULL,NULL)


insert into [Stage].[dbo].[sec_users_apps]  (login,app_name,priv_access,priv_insert,priv_delete,priv_update,priv_export,priv_print)
values ('b5','grid_dbo_PedidoSug',NULL,NULL,NULL,NULL,NULL,NULL)

insert into [Stage].[dbo].[sec_users_apps]  (login,app_name,priv_access,priv_insert,priv_delete,priv_update,priv_export,priv_print)
values ('b5','grid_app_PedidoSugerido',NULL,NULL,NULL,NULL,NULL,NULL)


insert into [Stage].[dbo].[sec_users_apps]  (login,app_name,priv_access,priv_insert,priv_delete,priv_update,priv_export,priv_print)
values ('b5','form_dbo_ItemPU',NULL,NULL,NULL,NULL,NULL,NULL)


insert into [Stage].[dbo].[sec_users_apps]  (login,app_name,priv_access,priv_insert,priv_delete,priv_update,priv_export,priv_print)
values ('b5','grid_AnalisisPromedios',NULL,NULL,NULL,NULL,NULL,NULL)

insert into [Stage].[dbo].[sec_users_apps]  (login,app_name,priv_access,priv_insert,priv_delete,priv_update,priv_export,priv_print)
values ('b5','grid_dbo_maestrodelta_items',NULL,NULL,NULL,NULL,NULL,NULL)

insert into [Stage].[dbo].[sec_users_apps]  (login,app_name,priv_access,priv_insert,priv_delete,priv_update,priv_export,priv_print)
values ('b5','grid_stock_total',NULL,NULL,NULL,NULL,NULL,NULL)

insert into [Stage].[dbo].[sec_users_apps]  (login,app_name,priv_access,priv_insert,priv_delete,priv_update,priv_export,priv_print)
values ('b5','grid_bi_Importacion',NULL,NULL,NULL,NULL,NULL,NULL)

insert into [Stage].[dbo].[sec_users_apps]  (login,app_name,priv_access,priv_insert,priv_delete,priv_update,priv_export,priv_print)
values ('b5','grid_ventas_total',NULL,NULL,NULL,NULL,NULL,NULL)


insert into [Stage].[dbo].[sec_users_apps]  (login,app_name,priv_access,priv_insert,priv_delete,priv_update,priv_export,priv_print)
values ('b5','grid_dbo_reporte_ccc',NULL,NULL,NULL,NULL,NULL,NULL)

insert into [Stage].[dbo].[sec_users_apps]  (login,app_name,priv_access,priv_insert,priv_delete,priv_update,priv_export,priv_print)
values ('b5','main_ccc',NULL,NULL,NULL,NULL,NULL,NULL)

insert into [Stage].[dbo].[sec_users_apps]  (login,app_name,priv_access,priv_insert,priv_delete,priv_update,priv_export,priv_print)
values ('b5','form_dbo_alm_dam',NULL,NULL,NULL,NULL,NULL,NULL)

insert into [Stage].[dbo].[sec_users_apps]  (login,app_name,priv_access,priv_insert,priv_delete,priv_update,priv_export,priv_print)
values ('b5','grid_dbo_Forecast_Prog',NULL,NULL,NULL,NULL,NULL,NULL)


insert into [Stage].[dbo].[sec_users_apps]  (login,app_name,priv_access,priv_insert,priv_delete,priv_update,priv_export,priv_print)
values ('b5','grid_dbo_Forecast_Compras_Prog',NULL,NULL,NULL,NULL,NULL,NULL)


insert into [Stage].[dbo].[sec_users_apps]  (login,app_name,priv_access,priv_insert,priv_delete,priv_update,priv_export,priv_print)
values ('b5','form_dbo_centro',NULL,NULL,NULL,NULL,NULL,NULL)

insert into [Stage].[dbo].[sec_users_apps]  (login,app_name,priv_access,priv_insert,priv_delete,priv_update,priv_export,priv_print)
values ('b5','form_aba_FI',NULL,NULL,NULL,NULL,NULL,NULL)


insert into [Stage].[dbo].[sec_users_apps]  (login,app_name,priv_access,priv_insert,priv_delete,priv_update,priv_export,priv_print)
values ('b5','form_dbo_Excluir_Almacen',NULL,NULL,NULL,NULL,NULL,NULL)

insert into [Stage].[dbo].[sec_users_apps]  (login,app_name,priv_access,priv_insert,priv_delete,priv_update,priv_export,priv_print)
values ('b5','grid_dbo_Forecast_Prog',NULL,NULL,NULL,NULL,NULL,NULL)

insert into [Stage].[dbo].[sec_users_apps]  (login,app_name,priv_access,priv_insert,priv_delete,priv_update,priv_export,priv_print)
values ('alfredo','grid_dbo_Forecast_Prog','Y','Y','Y','Y','Y','Y')

update [Stage].[dbo].[sec_users_apps] 
set app_name = 'App_Lista_Recepcion'
where  app_name ='App_lista_recepcion'
