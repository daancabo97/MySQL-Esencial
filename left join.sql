/* Extraer el nombre del cliente y la factura */

select 
cliente.nombre as cliente,
factura.idfactura as factura
from cliente 
left join factura on cliente.idCliente = factura.idCliente
order by cliente.nombre asc;

/* Extraer el nombre del cliente y la factura y buscar  donde la factura es nula*/

select 
cliente.nombre as cliente,
factura.idfactura as factura
from cliente 
left join factura on cliente.idCliente = factura.idCliente
where factura.idFactura is null
order by cliente.nombre asc;

/* Mostrar el id de la factura y el id del producto */

select factura.idFactura as Factura,
idProducto as Producto
from factura
left join detalle_factura on factura.idFactura = detalle_factura.idFactura
where factura.idFactura = 1
order by idProducto asc;

/* Mostrar el id de la factura y el id del producto */

select factura.idFactura as Factura,
idProducto as Producto
from factura
left join detalle_factura on factura.idFactura = detalle_factura.idFactura
and factura.idFactura = 1
order by idProducto asc;

select * from factura;
select * from detalle_factura;
select * from producto




