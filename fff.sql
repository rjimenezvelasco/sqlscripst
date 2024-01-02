
select * 
 from dbo.Reserva_Cab
 
 select * 
 from dbo.Reserva
 

select r.id_item,sum(r.cantidad_reserva)
from dbo.Reserva  r
inner join dbo.Reserva_Cab c on c.id_res = r.id_res and c.aprobado = 1
group by r.id_item

