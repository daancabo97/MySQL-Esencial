select * 
from factura 
natural join cliente
order by cliente.idCliente;