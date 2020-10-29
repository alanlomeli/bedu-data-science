#RETO 2
#Usando la base de datos tienda, escribe consultas que permitan responder las siguientes preguntas.
USE tienda;
#¿Cuál es el promedio de salario de los puestos?
SELECT AVG(salario) from puesto;

#¿Cuántos artículos incluyen la palabra Pasta en su nombre?
SELECT COUNT(*) from articulo where nombre lIKE "%Pasta%";

#¿Cuál es el salario mínimo y máximo?
SELECT MIN(salario) as "Salario minimo", MAX(salario) as "Salario máximo" from puesto;

#¿Cuál es la suma del salario de los últimos cinco puestos agregados?
SELECT SUM(salario) from puesto where id_puesto > (SELECT MAX(id_puesto) - 5 FROM puesto);