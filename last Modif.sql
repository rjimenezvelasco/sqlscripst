SELECT name, create_date, modify_date 
FROM sys.objects
--WHERE type = 'p' 
order by modify_date desc