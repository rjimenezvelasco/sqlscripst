
-- step 1
update  Mayor_Proc
set cuenta = cuen,cuenta_descrip= cuedes

--step 2
update Mayor_Proc
set cuenta = p.cuegen
/*
   select 
  p.cuegen,m.**/
 from Mayor_Proc m
  inner join PlanCuentas p on m.cuen = p.cuenta
  where m.cuen like '[A-Z]%'
  
--step 3
update Mayor_Proc
set cuenta_descrip = p.cuedes
 from Mayor_Proc m
  inner join PlanCuentas p on m.cuenta = p.cuenta
  where m.cuen like '[A-Z]%'
  
  select top 500 cuen,cuenta,cuenta_descrip,* from Mayor_Proc
  where cuenta ='10301002'
  
  SELECT max(len(cuedes))
  FROM [Finanzas].[dbo].[PlanCuentas]
  where cuenta ='10301002'
  
  CREATE NONCLUSTERED INDEX IX_cuenta   
    ON Mayor_Proc (cuenta); 
    
   CREATE NONCLUSTERED INDEX IX_cuenta_desc 
    ON Mayor_Proc (cuenta_descrip); 