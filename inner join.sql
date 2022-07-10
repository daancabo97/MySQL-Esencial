/* Visualizar el nombre de la categoria y nombre del producto*/

select categoria.nombre as categoria,
producto.nombre as producto
from producto 
inner join categoria on categoria.idCategoria = producto.idCategoria;

/* Unir la tabla de factura cliente y empleado */
select factura.idFactura as factura,
cliente.nombre as nombreCliente,
empleado.nombre as nombreEmpleado
from factura 
inner join cliente on cliente.idCliente = factura.idCliente
inner join empleado on empleado.idEmpleado = factura.idEmpleado;


select * from categoria;
select * from producto;
select * from factura;
select * from cliente;
select * from empleado;