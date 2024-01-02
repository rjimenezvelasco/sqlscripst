SELECT
    CONVERT(varchar,mes_compra)+'-'+CONVERT(varchar,anio_compra) as mes_anio,
    prov_compra,
    Compra,
    Venta
FROM
    dbo.v_Graph_CompraVentas
where prov_compra ='JOHNSON &' and anio_compra in (2018,2019)
  order by mes_compra,anio_compra
  
  
  
SELECT 
mes_compra,
anio_compra,
 fecha,
   prov_compra,
   Compra,
   Venta
  FROM [Stage].[dbo].[v_Graph_CompraVentas]
  where prov_compra in (select descripcion from Proveedor where idproveedor = [v_prov])
  and  mes_compra >= month(convert(date,'[v_fch_ini]')) and anio_compra >=year(convert(date,'[v_fch_ini]'))  
  and anio_compra <=year(convert(date,'[v_fch_fin]')) 
    order by fecha asc
  
 /*  where idproveedor = [v_prov]
and  
fecha>=convert(date,'[v_fch_ini]')
and  fecha<=convert(date,'[v_fch_fin]')*/
 
SET LANGUAGE Spanish;
SELECT DATENAME(MONTH, @Today) AS 'Month Name';

SELECT 
mes_compra,
anio_compra,
left(DATENAME(MONTH, fecha),3)+'/'+convert(varchar,anio_compra) as mes_an,
   prov_compra,
   Compra,
   Venta
  FROM v_Graph_CompraVentas
  where prov_compra in (select descripcion from Proveedor where idproveedor = 94)
  and fecha>= convert(date,'2018-01-01') and fecha<=convert(date,'2019-01-31') 
  
  and  mes_compra >= month(convert(date,'[v_fch_ini]')) and anio_compra >=year(convert(date,'[v_fch_ini]'))  
  and anio_compra <=year(convert(date,'[v_fch_fin]'))

  and fecha>= convert(date,'[v_fch_ini]') and fecha<=convert(date,'[v_fch_fin]') 
   order by fecha asc
  