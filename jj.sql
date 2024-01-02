SELECT 
mes_compra,
anio_compra,
 mes_anio,
   prov_compra,
   Compra,
   Venta
  FROM dbo.v_Graph_CompraVentas
where prov_compra in (select descripcion from Proveedor where idproveedor = 94)
and  mes_compra >= month(convert(date,'2018-01-01')) and anio_compra >=year(convert(date,'2018-01-01'))  
  and anio_compra <=year(convert(date,'2019-01-31'))
order by anio_compra,mes_compra asc

declare @fech varchar(10)='2018-01-01'
declare @fecha date = convert(date,@fech)

SELECT  DATEADD(d, -1, DATEADD(m, DATEDIFF(m, 0, @fecha) + 1, 0));

DECLARE @Today DATETIME;
SET @Today = '12/5/2007';
 
SET LANGUAGE Spanish;
SELECT DATENAME(MONTH, @Today) AS 'Month Name';