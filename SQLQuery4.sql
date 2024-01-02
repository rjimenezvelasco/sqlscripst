
select ciu_almacen_salida,a.agencia,p.usr_id,u.name, u.area,u.tipo_usr
from lg.PT p
inner join sec_users u on u.usr_id = p.usr_id
inner join Almacen_Empresa a on a.id = p.ciu_almacen_salida
 --and tipo_usr ='APROB'
  and area='B'


 select usr_id,name from v_Aprob


  select * from sec_users
  where name like '%gina%'
  
  update sec_users
  set email ='luz.tellez@gedesa.com'
  where usr_id= 13
  
  select * from lg.PT
  where no_pedido like '427'
  
  select * from lg.pt_detalle
  where id_pt =349
  
  insert into lg.pt_detalle(id_pt,estado,entregado_a,fecha_entrega,fecha_fin,inicio,fin)
  values (349,6,44,GETDATE(),GETDATE(),1,1)
  
  update lg.PT
  set almacen_usr=44
  where id= 349
  
  