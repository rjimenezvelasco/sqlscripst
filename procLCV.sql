USE [Ventas]
GO
/****** Object:  StoredProcedure [dbo].[Sp_Ventas_LV]    Script Date: 02/15/2016 12:09:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[Sp_Ventas_LV]

@fch_ini datetime,
@fch_fin datetime,
@empresa int

AS

SELECT
      3 as especificacion,
      (ROW_nUMBER() OVER (ORDER BY num_factura ASC)) as num,
      fecha_fact,
      num_factura,
      no_autorizacion,
      cerrar as estado,
      v.nit_ci,
      c.nombre,
      total + isnull(descuento,0) as importe_total,
      0 as ice_iehd,
      0 as export_oper_exent,
      0 ventas_tasa_cero,
      (total +  isnull(descuento,0)) as subtotal,
      isnull(descuento,0) as descuento,
      total as importe_base,
      ROUND(total*0.13,2) as debito_fiscal,
      codigo_control,
      e.nombre as nombre_empresa,
      e.nit as nit_empresa      
            
FROM  Venta v
INNER JOIN Cliente c  ON  c.nit_ci = v.nit_ci
INNER JOIN Dosificacion d On d.n_autorizacion = v.no_autorizacion
INNER JOIN Empresa e ON e.idempresa = d.idempresa
WHERE v.fecha_fact>=@fch_ini and v.fecha_fact <= @fch_fin
