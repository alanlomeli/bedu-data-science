#Reto 3
#Usando la base de datos tienda, escribe consultas que permitan responder las siguientes preguntas.
USE tienda;
#¿Cuántos registros hay por cada uno de los puestos?
SELECT nombre, count(nombre) as "Total registros" FROM puesto GROUP BY nombre;

#¿Cuánto dinero se paga en total por puesto?
SELECT nombre, sum(salario) as "Total pagado por puesto" FROM puesto GROUP BY nombre;

#¿Cuál es el número total de ventas por vendedor?
SELECT id_empleado, count(*) as "Total de ventas" FROM venta GROUP BY id_empleado;

#¿Cuál es el número total de ventas por artículo?
SELECT id_articulo, count(*) as "Total de ventas" FROM venta GROUP BY id_articulo;
