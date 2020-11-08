USE tienda;
SHOW TABLES;
SELECT * FROM empleado;
SELECT * FROM puesto;
SELECT * FROM venta;


#Usando la base de datos tienda, escribe consultas que permitan responder las siguientes preguntas.	
#¿Cuál es el nombre de los empleados cuyo salario es mayor a $10,000?
SELECT nombre FROM empleado WHERE id_puesto IN(SELECT id_puesto from puesto WHERE salario > 1000 );

#¿Cuál es la cantidad mínima y máxima de ventas de cada empleado?
SELECT clave, id_empleado, COUNT(*) as total FROM venta GROUP BY clave, id_empleado; #Obtener numero de ventas por empleado

SELECT id_empleado, 
MIN(numeroventas.total) as maximo, 
MAX(numeroventas.total) as minimo
from (SELECT clave, id_empleado, COUNT(*) as total FROM venta GROUP BY clave,id_empleado) as numeroventas GROUP BY id_empleado ORDER BY id_empleado;

#¿Cuáles claves de venta incluyen artículos cuyos precios son mayores a $5,000?
SELECT id_articulo FROM articulo WHERE precio > 5000; #id articulos de articulos superiores a $5000

SELECT clave FROM venta WHERE id_articulo IN(SELECT id_articulo FROM articulo WHERE precio > 5000);
