/****** Script for SelectTopNRows command from SSMS  ******/
SELECT fecha_ini, right(fecha_ini,4)+'/'+SUBSTRING(fecha_ini,4,2)+'/' +LEFT(fecha_ini,2),
convert(date,right(fecha_ini,4)+'/'+SUBSTRING(fecha_ini,4,2)+'/'+ +LEFT(fecha_ini,2))
  FROM [BI_Gedesa].[dbo].[Compras]
  where fecha_ini not like '.NULL.'
  
  select *
   FROM [BI_Gedesa].[dbo].[Compras]
    where fecha_ini like '.NULL.'
    
    
    update [BI_Gedesa].[dbo].[Compras]
    set fecha_ini = '01-01-1900'
    where fecha_ini like '.NULL.'
    
    update [BI_Gedesa].[dbo].[Compras]
    set fecha_ini =convert(date,right(fecha_ini,4)+'/'+SUBSTRING(fecha_ini,4,2)+'/'+ +LEFT(fecha_ini,2))
-----


SELECT fecha_cie, right(fecha_cie,4)+'/'+SUBSTRING(fecha_cie,4,2)+'/' +LEFT(fecha_cie,2)
--convert(date,right(fecha_cie,4)+'/'+SUBSTRING(fecha_cie,4,2)+'/'+ +LEFT(fecha_cie,2))
  FROM [BI_Gedesa].[dbo].[Compras]
   where rtrim(fecha_cie) like '/  /'
  
  update [BI_Gedesa].[dbo].[Compras]
    set fecha_cie = '01-01-1900'
    where rtrim(fecha_cie) like '/  /'
    
    
   update [BI_Gedesa].[dbo].[Compras]
    set fecha_cie =convert(date,right(fecha_cie,4)+'/'+SUBSTRING(fecha_cie,4,2)+'/'+ +LEFT(fecha_cie,2))
