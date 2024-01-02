/*select p.id,p.estado,p.estado_distrib, p.cliente,p.usr_id
from lg.PT p
inner join lg.pt_detalle d
on  p.id =d.id_pt and d.estado=6
where p.id =420

select * from lg.Estado_Pedido
select * from lg.Estado_Recep

update lg.PT
set estado_distrib = 8,estado_recepcion= 1
where id in (146,154,158,159,160,161,164,165,178)
where no_pedido in ('690','691','696','697','698','699','710','711','716','717')
and almacen=211
order by id desc

select * from Almacen_Empresa
where agencia='S?'

delete from lg.PT
where id in (786,783,777,775,770)

*/

