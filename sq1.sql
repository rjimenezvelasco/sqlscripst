SELECT 0 as usr_id ,'' as name
UNION ALL
SELECT usr_id, name 
FROM dbo.sec_users 
WHERE tipo_usr='APROB' 
ORDER BY name