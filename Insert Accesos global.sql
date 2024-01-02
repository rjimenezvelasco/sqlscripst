
INSERT INTO [dbo].[sec_users_apps]
           ([login]
           ,[app_name]
           ,[priv_access]
           ,[priv_insert]
           ,[priv_delete]
           ,[priv_update]
           ,[priv_export]
           ,[priv_print])
SELECT  'ld'
      ,[app_name]
      ,[priv_access]
      ,[priv_insert]
      ,[priv_delete]
      ,[priv_update]
      ,[priv_export]
      ,[priv_print]
  FROM [Stage].[dbo].[sec_users_apps]
  where login = 'b5'