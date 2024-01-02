SELECT TOP 1000 [login]
      ,[app_name]
      ,[priv_access]
      ,[priv_insert]
      ,[priv_delete]
      ,[priv_update]
      ,[priv_export]
      ,[priv_print]
  FROM [Stage].[dbo].[sec_users_apps]
  where login ='lt'  and app_name in ('appsecgrid_sec_users','appsecform_sec_apps','appsecgrid_sec_users_apps','appsecsync_apps')
  
UPDATE [Stage].[dbo].[sec_users_apps]
set priv_access ='N'
  where login ='lt'  and app_name in ('appsecgrid_sec_users','appsecform_sec_apps','appsecgrid_sec_users_apps','appsecsync_apps')

