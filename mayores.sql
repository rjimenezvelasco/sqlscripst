/****** Script for SelectTopNRows command from SSMS  ******/
SELECT cuenta,cuegen, cuedes
  FROM [Finanzas].[dbo].[PlanCuentas]
  where cuenta ='10301002'
  
SELECT cuenta,cuegen, cuedes
  FROM [Finanzas].[dbo].[PlanCuentas]
  where  len(cuegen)=8
  order by cuenta asc
  
   select count(*)  from dbo.Mayor_Proc
   
   where cuen ='10301002'
  
  select  * from dbo.Mayor_Proc
  where  cuen in (select cuenta from PlanCuentas where cuegen='10301002')
  and id_empresa = 1 and mes = 1 and anio=2019
  
  ALTER TABLE dbo.Mayor_Proc ADD cuenta VARCHAR(50) NULL,cuenta_descrip varchar(100) null;
  
  ALTER TABLE dbo.Mayor_Proc ADD cuenta_descrip varchar(100) null;
  
  select top 50000

  p.cuegen,m.*
 
    from Mayor_Proc m
  inner join PlanCuentas p on m.cuen = p.cuenta
  where m.cuen like '[A-Z]%'