/****** Script for SelectTopNRows command from SSMS  ******/
SELECT observadores
  FROM [Stage].[lg].[PT]
 
  declare @results varchar(500)
   
  select  email
  from sec_users
  where usr_id in (select * from dbo.fnStringList2Table(1))
 


			select  email
			  from sec_users
			  where usr_id in (select * from dbo.fnStringList2Table(1))
 

SELECT STUFF((SELECT convert(varchar,email)+' , '
FROM 								
(
select  email
			  from sec_users
			  where usr_id in (select * from dbo.fnStringList2Table(1))
) a
FOR XML PATH('')
),1,1, ''
)
