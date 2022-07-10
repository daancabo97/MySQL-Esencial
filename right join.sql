/* Asociar el nombre del cliente con la respectiva factura */
select 
cliente.nombre as cliente,
factura.idFactura as factura
from cliente
right join factura on factura.idCliente = cliente.idCliente
order by factura.idFactura;

/* Asociar la factura con el empleado que genero dicha factura*/
select 
factura.idFactura as factura,
empleado.nombre as empleado
from factura 
right join empleado on factura.idEmpleado = empleado.idEmpleado
order by factura.idFactura;

/* asociar la factura con el nombre del producto y la cantidad vendida */
select
detalle_factura.idFactura as factura,
producto.nombre as producto,
detalle_factura.cantidad as cantidad
from detalle_factura 
right join producto on detalle_factura.idProducto = producto.idProducto
order by factura;




