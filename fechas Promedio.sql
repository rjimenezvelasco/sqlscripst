	
  declare @fecha_actual date ='2019-04-30'
  
  declare @fecha_fin date = @fecha_actual;
  set @fecha_fin = DATEADD(dd,-(DAY(@fecha_fin)),@fecha_fin)
  
  /* fecha ultimo dia del mes*/
  
  print @fecha_fin
   
  declare @dif int = 0
  declare @fecha_ini date=DATEADD(mm, -12, @fecha_fin)
  
  set @fecha_ini = DATEADD(dd,-(DAY(DATEADD(mm,1,@fecha_ini))-1),DATEADD(mm,1,@fecha_ini))
  
  print @fecha_ini
  
  select distinct fecha from [Stage].[dbo].[AnalisisProm]