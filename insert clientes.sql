insert into Cliente (IdCliente,nombre,nit_ci) 
select c.nit_ci,c.nombre,c.nit_ci
from Cliente_old c
left join Cliente d on c.nit_ci= d.nit_ci
where d.nit_ci is null 