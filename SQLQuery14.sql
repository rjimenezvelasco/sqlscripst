select *
from dbo.v_Compras 
where proveedor ='JOHNSON &' and
 fecha_cie>=convert(date,'2018-01-01') and 
 fecha_cie<=convert(date,'2018-12-31')