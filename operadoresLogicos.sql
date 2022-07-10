select idProducto, nombre
from producto
where precioUnitario < 2.30 != idCategoria = 2;

select * from producto where idcategoria is not null;

select * from producto where precioUnitario < 2.30 xor idCategoria = 2;