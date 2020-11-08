USE tienda;
#Obtener el puesto de un empleado.
CREATE VIEW puestos024 AS
SELECT empleado.nombre AS nombre_empleado, 
empleado.apellido_materno, 
empleado.apellido_paterno, 
puesto.nombre as nombre_puesto
FROM empleado JOIN puesto ON
puesto.id_puesto = empleado.id_puesto; 

SELECT * FROM puestos024;

SELECT * FROM articulo;

#