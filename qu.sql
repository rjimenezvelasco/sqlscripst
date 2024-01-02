SELECT
    r.idreserva,
    r.fecha_reserva,
    c.cendes,
    a.ciudad,
    cl.Nombre,
    m.item,
    m.itedes,
    r.cantidad_reserva,
    r.cantidad_stock,
    r.fecha_stock
FROM
    reserva r
Inner join maestrodelta m on m.id_item = r.id_item
inner join centro c on c.id_centro = r.id_centro
inner join almacen_ciudad a on a.id_ciu_alm = r.id_almacen
inner join cliente cl on cl.id_cliente =  r.id_cliente
WHERE r.usr_id = [v_usrid]
ORDER BY  r.idreserva ASC