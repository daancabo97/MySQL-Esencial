select idproducto,
precioUnitario * cantidad as total
from detalle_factura;

select idproducto,
(precioUnitario * cantidad) - (precioUnitario * cantidad * 0.10) as 'precio con descuento'
from detalle_factura;

select * from detalle_factura;