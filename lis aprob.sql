SELECT
    p.id,
    a.agencia +'-'+t.tipo+'-'+convert(varchar,p.mes)+'-'+convert(varchar,p.no_pedido) as ped,
    p.no_pedido,
    p.cliente,
    p.recepcion,
    p.lugar_entrega,
    p.fecha_entrega,
    p.entregado_por,
    ua.name as aprob,
    p.aprobado_por,
    e.estado as stat,
    p.observacion,
    p.usr_id,
    u.name,
    p.fch_usrid,
    p.fecha_aprobacion
FROM
    lg.PT p
LEFT JOIN sec_users u on u.usr_id =p.usr_id
LEFT JOIN sec_users ua on ua.usr_id = p.aprobado_por
inner join lg.Estado_Pedido e on e.id = p.estado
inner join Almacen_empresa a  on a.id = p.almacen
INNER JOIN lg.TipoReq t on t.id = p.tipo
where p.estado in (3) 
and p.usr_id in (
select idvendedor from Vendedor_VP where vp=8
)
order by p.id desc