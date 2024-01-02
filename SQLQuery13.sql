SELECT
    id_compra,
    detalle,
    fecha_ini,
    fecha_cie,
    C6,
    ped,
    recibido,
    R9,
    item,
    descripcion,
    pedido,
    costo_usd,
    valor_usd,
    proveedor
FROM
    dbo.v_Compras
where proveedor ='JOHNSON &' and fecha_cie>=convert(date,'2018-01-01') and  fecha_cie<=convert(date,'2018-12-01')
