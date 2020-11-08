USE tienda;

#¿Cuál es el nombre de los empleados que realizaron cada venta?
SELECT empleado.nombre, 
empleado.apellido_materno, 
empleado.apellido_paterno, 
venta.id_venta, 
venta.fecha 
from empleado 
JOIN venta 
on empleado.id_empleado = venta.id_empleado;

#¿Cuál es el nombre de los artículos que se han vendido?
SELECT articulo.nombre, 
venta.id_venta, venta.fecha 
from articulo 
JOIN venta 
ON articulo.id_articulo = venta.id_articulo;

#¿Cuál es el total de cada venta?
SELECT SUM(articulo.precio) as total,
 venta.clave from venta 
 JOIN articulo 
 ON articulo.id_articulo = venta.id_articulo
 GROUP BY venta.clave
 ORDER BY total; 
