

SELECT
  PROVEEDOR, 
  item,
  descripcion,
  COUNT(cantidad) as no_ventas,
  SUM(CANTIDAD) as total,
  dbo.mediana(PROVEEDOR,item) as mediana
  FROM [Stage].[dbo].[ventas]
  WHERE PROVEEDOR = 'JOHNSON &'  
  group by proveedor,item,DESCRIPCION,mes
  order by item;
  
  SELECT *
  FROM [Stage].[dbo].[v_SaldoStockProveedor]
  where proveedor like 'JOHNSON &%'
  order by item asc;
  
   select 
    *,
    case when Promedio_seis_meses <0.01 then 0
         else ROUND(Sugerencia_Promedio,0) end as Valor_Decision
   -- into Analisis_Decision
    from  Analisis_Ventas
   where CIUDAD <>''
   -- PROVEEDOR = 'JOHNSON &' 
  order by item asc
  
   select * from   Analisis_Decision
   where item =  11004
  
  SELECT 
  s.item, 
  s.descripcion,
  s.saldo as stock,
  (select Valor_Decision from   Analisis_Decision   a where a.item =  s.item and a.CIUDAD='Santa Cruz') as SCZ,
  (select Valor_Decision from   Analisis_Decision   a where a.item =  s.item and a.CIUDAD='Santa Cruz') as LPZ,
  (select Valor_Decision from   Analisis_Decision   a where a.item =  s.item and a.CIUDAD='Santa Cruz') as CBA
  FROM [Stage].[dbo].[v_SaldoStockProveedor] s
 where proveedor like 'JOHNSON &%'
  order by s.item asc;