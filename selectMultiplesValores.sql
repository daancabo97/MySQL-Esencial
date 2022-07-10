select * from factura 
where idFactura IN (1,3,5,7);

select * from factura 
where idFactura != 1 
and idFactura != 3 
and idFactura != 5 
and idFactura != 7;

select * from factura 
where idFactura != 1 
or idFactura != 3 
or  idFactura != 5 
or  idFactura != 7;


select * from factura 
where idFactura NOT IN (1,3,5,7);




