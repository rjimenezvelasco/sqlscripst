declare @cuenta varchar(50) ='Prestamos Socios'
declare @empresa int = 3

select * from PlanCuentas  
	where tipo= 
	   case when @cuenta='Desembolso Bancario' then 9
	       when @cuenta ='Prestamos Socios' then 2 end
	       
SELECT 
top 100 percent month(fecha) as mes, year(fecha) as annio,sum(haber_d) as valor
 --cuen,tipo,deta,docu, haber_d,id_empresa
  FROM [Finanzas].[dbo].[Mayor]
  where  cuen in (
    select cuenta from PlanCuentas  
	where id_empresa=@empresa and tipo= 
	   case when @cuenta='Desembolso Bancario' then 9
	       when @cuenta ='Prestamos Socios' then 2 end

  ) and year(fecha) = 2019 and empresa is not null
  group by month(fecha),year(fecha)
  
  SELECT 
--top 100 percent month(fecha) as mes, year(fecha) as annio,sum(haber_d) as valor
  cuen,tipo,deta,docu, haber_d,id_empresa,month(fecha) as mes,year(fecha) as anio
  FROM [Finanzas].[dbo].[Mayor]
  where id_empresa=@empresa and cuen in (
    select cuenta from PlanCuentas  
	where  tipo= 
	   case when @cuenta='Desembolso Bancario' then 9
	       when @cuenta ='Prestamos Socios' then 2 end

  ) and year(fecha) = 2019 and empresa is not null
  order by mes, anio
  --group by month(fecha),year(fecha)