select * 
from cliente
where telefono is null;

select * 
from cliente
where telefono is not null;

update cliente set telefono = null where idCliente = 2 ;