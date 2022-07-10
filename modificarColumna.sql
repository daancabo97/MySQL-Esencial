alter table producto
change column nombre descripcion longtext null default null;

alter table producto
drop column descripcion;