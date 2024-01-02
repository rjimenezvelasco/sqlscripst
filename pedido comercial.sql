SELECT id
      ,ped
      ,no_pedido
      ,cliente
      ,recepcion
      ,lugar_entrega
      ,fecha_entrega
      ,entregado_por
      ,aprob
      ,aprobado_por
      ,stat
      ,observacion
      ,usr_id
      ,name
      ,fch_usrid
      ,fecha_aprobacion
      ,estado_almacen
      ,estado_distribucion
	, fecha_distribucion
	,ciudad
	,envio_comercial=1
  FROM v_PedidosEstado
WHERE estado_distribucion is not null and (estado_recepcion is null OR estado_recepcion =0)
 and usr_id=2 and envio_comercial=1
order by ID desc