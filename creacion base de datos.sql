CREATE TABLE 'cliente' (
	'idCliente' int NOT NULL AUTO_INCREMENT,
    'nombre' varchar(45) DEFAULT NULL,
	'apellido' varchar(45) DEFAULT NULL,
	'telefono' varchar(45) DEFAULT NULL,
	'email' varchar(45) DEFAULT NULL,
	'ciudad' varchar(45) DEFAULT NULL,
	'pais' varchar(45) DEFAULT NULL,
    PRIMARY KEY('idCliente')
)

CREATE TABLE 'departamento'(
	'idDepartamento' int NOT NULL AUTO_INCREMENT,
    'nombre' varchar(45)  NULL,
    PRIMARY KEY('idDepartamento')
)


CREATE TABLE 'empleado'(
	'idEmpleado' int NOT NULL AUTO_INCREMENT,
    'nombre' varchar(45) DEFAULT NULL,
	'apellido' varchar(45) DEFAULT NULL,
	'fechaIngreso' date DEFAULT NULL,
	'fechaNacimiento' date DEFAULT NULL,
	'sexo' ENUM(45) DEFAULT NULL,
	'email' varchar(45) DEFAULT NULL,
	'telefono' varchar(45) DEFAULT NULL,
	'salario' decimal(45) DEFAULT NULL,
	'idDepartamento' int NULL,
    PRIMARY KEY('idEmpleado')
)

CREATE TABLE 'categoria'(
	'idCategoria' int NOT NULL AUTO_INCREMENT,
    'nombre' varchar(45) DEFAULT NULL,
	'descripcion' varchar(45) DEFAULT NULL,
    PRIMARY KEY('idCategoria')
)

ALTER TABLE 'producto'
ADD COLUMN 'nombre' varchar(45) NULL AFTER 'idProducto',
ADD COLUMN 'idCategoria' INT NULL AFTER 'nombre',
ADD COLUMN 'precioUnitario' DECIMAL(10,2) NULL AFTER 'idCategoria',

CREATE TABLE 'factura'(
	'idFactura' int NOT NULL AUTO_INCREMENT,
	'fecha' datetime DEFAULT NULL,
    'idCliente' int DEFAULT NULL,
	'idEmpleado' int DEFAULT NULL,
    PRIMARY KEY('idFactura')
)

CREATE TABLE 'detalle_factura' (
	'idDetalle' int NOT NULL AUTO_INCREMENT,
	'idFactura' datetime DEFAULT NULL,
    'idProducto' int DEFAULT NULL,
	'cantidad' int DEFAULT NULL,
    PRIMARY KEY('idDetalle')
)


