/* 1 */
select
cliente.idCliente as id,
cliente.nombre as nombre,
factura.idFactura as factura
from
cliente
left join factura using(idCliente)
where idCliente = 3;

/* 2 */
select cliente.idCliente as id,
cliente.nombre as nombre,
factura.idFactura as factura
from
cliente
left join factura on factura.idCliente = cliente.idCliente
and cliente.idCliente = 3;