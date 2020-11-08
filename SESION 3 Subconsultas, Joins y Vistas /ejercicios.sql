USE classicmodels;
#Para estas consultas usa RIGHT JOIN
#Obten el código de producto, nombre de producto y descripción de todos los productos.
SELECT productCode, productName, productDescription FROM products; #No necesito una subconsulta ????

#Obten el número de orden, estado y costo total de cada orden.
SELECT orders.orderNumber, orders.status, SUM(orderdetails.priceEach) AS TOTAL FROM orders 
RIGHT JOIN orderdetails 
ON orders.orderNumber = orderdetails.orderNumber 
GROUP BY  orders.orderNumber;

#Obten el número de orden, fecha de orden, línea de orden, nombre del producto, cantidad ordenada y precio de cada pieza que muestre los detalles de cada orden.
SELECT orders.orderNumber, 
orders.orderDate, 
orderdetails.orderlineNumber,
products.productName,
orderdetails.quantityOrdered, 
products.buyPrice FROM orders
RIGHT JOIN orderdetails ON 
orderdetails.orderNumber = orders.orderNumber 
RIGHT JOIN products ON
orderdetails.productCode = products.productCode;


#Obtén el número de orden, nombre del producto, el precio sugerido de fábrica (msrp) y precio de cada pieza.
SELECT orderdetails.orderNumber, products.productName, products.MSRP, products.buyPrice FROM
orderdetails RIGHT JOIN 
products ON 
orderdetails.productCode=products.productCode ;

#Para estas consultas usa LEFT JOIN
#Obtén el número de cliente, nombre de cliente, número de orden y estado de cada cliente.
SELECT customers.customerNumber,customers.customerName, orders.orderNumber, orders.status FROM 
customers LEFT JOIN orders ON
orders.customerNumber = customers.customerNumber;

#Obtén los clientes que no tienen una orden asociada.
SELECT customers.customerName FROM customers 
LEFT JOIN orders ON
customers.customerNumber = orders. customerNumber WHERE orders.orderNumber IS NULL;

#Obtén el apellido de empleado, nombre de empleado, nombre de cliente, número de cheque y total, es decir, los clientes asociados a cada empleado.
SELECT employees.lastName, 
employees.firstName,
customers.customerName,
payments.checkNumber, 
payments.amount FROM customers
LEFT JOIN payments ON
customers.customerNumber = payments.customerNumber 
LEFT JOIN employees ON
customers.salesRepEmployeeNumber = employees.employeeNumber;

#Para estas consultas usa RIGHT JOIN
#Repite los ejercicios 5 a 7 usando RIGHT JOIN.
#Obtén el número de cliente, nombre de cliente, número de orden y estado de cada cliente.
SELECT customers.customerNumber,customers.customerName, orders.orderNumber, orders.status FROM 
customers RIGHT JOIN orders ON
orders.customerNumber = customers.customerNumber;

#Obtén los clientes que no tienen una orden asociada.
SELECT customers.customerName FROM customers 
RIGHT JOIN orders ON
customers.customerNumber = orders. customerNumber WHERE orders.orderNumber IS NULL;

#Obtén el apellido de empleado, nombre de empleado, nombre de cliente, número de cheque y total, es decir, los clientes asociados a cada empleado.
SELECT employees.lastName, 
employees.firstName,
customers.customerName,
payments.checkNumber, 
payments.amount FROM customers
RIGHT JOIN payments ON
customers.customerNumber = payments.customerNumber 
RIGHT JOIN employees ON
customers.salesRepEmployeeNumber = employees.employeeNumber;

#Escoge 3 consultas de los ejercicios anteriores, crea una vista y escribe una consulta para cada una.
CREATE VIEW cliente_empleado_asociado024 AS
SELECT employees.lastName, 
employees.firstName,
customers.customerName,
payments.checkNumber, 
payments.amount FROM customers
LEFT JOIN payments ON
customers.customerNumber = payments.customerNumber 
LEFT JOIN employees ON
customers.salesRepEmployeeNumber = employees.employeeNumber;
SELECT * FROM cliente_empleado_asociado024;

CREATE VIEW clientes_sin_orden024 AS 
SELECT customers.customerName FROM customers 
LEFT JOIN orders ON
customers.customerNumber = orders. customerNumber WHERE orders.orderNumber IS NULL;
SELECT * FROM clientes_sin_orden024;

#Obtén el número de orden, nombre del producto, el precio sugerido de fábrica (msrp) y precio de cada pieza.
CREATE VIEW datos_orden024 AS 
SELECT orderdetails.orderNumber, products.productName, products.MSRP, products.buyPrice FROM
orderdetails RIGHT JOIN 
products ON 
orderdetails.productCode=products.productCode;
SELECT * FROM datos_orden024;



	
