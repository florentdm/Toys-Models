USE toys_and_models;

#SELECT employeeNumber, employees.lastName, employees.firstName, customerNumber 
#FROM employees
#INNER JOIN customers ON customers.salesRepEmployeeNumber = employees.employeeNumber;

#SELECT orderdetails.orderNumber, orders.customerNumber, orderdetails.quantityOrdered * orderdetails.priceEach AS totalPrice, customers.salesRepEmployeeNumber
#FROM orders
#INNER JOIN orderdetails ON orderdetails.orderNumber = orders.orderNumber
#INNER JOIN customers ON customers.customerNumber = orders.customerNumber
##GROUP BY orderdetails.orderNumber; 
#GROUP BY customers.salesRepEmployeeNumber
#;

#SELECT employees.employeeNumber, customers.customerNumber
#FROM employees
#INNER JOIN customers ON customers.salesRepEmployeeNumber = employees.employeeNumber;

#SELECT customers.customerNumber, orders.orderNumber
#FROM customers
#INNER JOIN orders ON orders.customerNumber = customers.customerNumber;

#SELECT orders.orderNumber, orderdetails.quantityOrdered * orderdetails.priceEach AS totalPrice
#FROM orders
#INNER JOIN orderdetails ON orderdetails.orderNumber = orders.orderNumber;

#SELECT employees.employeeNumber, SUM(orderdetails.quantityOrdered * orderdetails.priceEach) AS totalPrice
#FROM employees
#INNER JOIN customers ON customers.salesRepEmployeeNumber = employees.employeeNumber
#INNER JOIN orders ON orders.customerNumber = customers.customerNumber
#INNER JOIN orderdetails ON orderdetails.orderNumber = orders.orderNumber
#GROUP BY employees.employeeNumber;

# affiche les deux meilleurs vendeur sur 2022
SELECT orders.shippedDate, orders.orderNumber, employees.employeeNumber, employees.lastName, employees.firstName, SUM(orderdetails.quantityOrdered * orderdetails.priceEach) AS totalPrice
FROM orders
INNER JOIN orderdetails ON orderdetails.orderNumber = orders.orderNumber
INNER JOIN customers ON customers.customerNumber = orders.customerNumber
INNER JOIN employees ON employees.employeeNumber = customers.salesRepEmployeeNumber
WHERE orders.shippedDate BETWEEN '2022-01-01' AND '2022-09-30'
GROUP BY orderdetails.orderNumber
ORDER BY totalPrice DESC
LIMIT 5
;

# affiche les deux meilleurs vendeur du mois de janvier 2022
SELECT orders.shippedDate, orders.orderNumber, employees.employeeNumber, employees.lastName, employees.firstName, SUM(orderdetails.quantityOrdered * orderdetails.priceEach) AS totalPrice
FROM orders
INNER JOIN orderdetails ON orderdetails.orderNumber = orders.orderNumber
INNER JOIN customers ON customers.customerNumber = orders.customerNumber
INNER JOIN employees ON employees.employeeNumber = customers.salesRepEmployeeNumber
WHERE orders.shippedDate BETWEEN '2022-01-01' AND '2022-01-31'
GROUP BY orderdetails.orderNumber
ORDER BY totalPrice DESC
LIMIT 2
;

# affiche les deux meilleurs vendeur du mois de février 2022
SELECT orders.shippedDate, orders.orderNumber, employees.employeeNumber, employees.lastName, employees.firstName, SUM(orderdetails.quantityOrdered * orderdetails.priceEach) AS totalPrice
FROM orders
INNER JOIN orderdetails ON orderdetails.orderNumber = orders.orderNumber
INNER JOIN customers ON customers.customerNumber = orders.customerNumber
INNER JOIN employees ON employees.employeeNumber = customers.salesRepEmployeeNumber
WHERE orders.shippedDate BETWEEN '2022-02-01' AND '2022-02-28'
GROUP BY orderdetails.orderNumber
ORDER BY totalPrice DESC
LIMIT 2
;

# affiche les deux meilleurs vendeur du mois de mars 2022
SELECT orders.shippedDate, orders.orderNumber, employees.employeeNumber, employees.lastName, employees.firstName, SUM(orderdetails.quantityOrdered * orderdetails.priceEach) AS totalPrice
FROM orders
INNER JOIN orderdetails ON orderdetails.orderNumber = orders.orderNumber
INNER JOIN customers ON customers.customerNumber = orders.customerNumber
INNER JOIN employees ON employees.employeeNumber = customers.salesRepEmployeeNumber
WHERE orders.shippedDate BETWEEN '2022-03-01' AND '2022-03-31'
GROUP BY orderdetails.orderNumber
ORDER BY totalPrice DESC
LIMIT 2
;

# affiche les deux meilleurs vendeur du mois de avril 2022
SELECT orders.shippedDate, orders.orderNumber, employees.employeeNumber, employees.lastName, employees.firstName, SUM(orderdetails.quantityOrdered * orderdetails.priceEach) AS totalPrice
FROM orders
INNER JOIN orderdetails ON orderdetails.orderNumber = orders.orderNumber
INNER JOIN customers ON customers.customerNumber = orders.customerNumber
INNER JOIN employees ON employees.employeeNumber = customers.salesRepEmployeeNumber
WHERE orders.shippedDate BETWEEN '2022-04-01' AND '2022-04-30'
GROUP BY orderdetails.orderNumber
ORDER BY totalPrice DESC
LIMIT 2
;

# affiche les deux meilleurs vendeur du mois de mai 2022
SELECT orders.shippedDate, orders.orderNumber, employees.employeeNumber, employees.lastName, employees.firstName, SUM(orderdetails.quantityOrdered * orderdetails.priceEach) AS totalPrice
FROM orders
INNER JOIN orderdetails ON orderdetails.orderNumber = orders.orderNumber
INNER JOIN customers ON customers.customerNumber = orders.customerNumber
INNER JOIN employees ON employees.employeeNumber = customers.salesRepEmployeeNumber
WHERE orders.shippedDate BETWEEN '2022-05-01' AND '2022-05-31'
GROUP BY orderdetails.orderNumber
ORDER BY totalPrice DESC
LIMIT 2
;

# affiche les deux meilleurs vendeur du mois de juin 2022
SELECT orders.shippedDate, orders.orderNumber, employees.employeeNumber, employees.lastName, employees.firstName, SUM(orderdetails.quantityOrdered * orderdetails.priceEach) AS totalPrice
FROM orders
INNER JOIN orderdetails ON orderdetails.orderNumber = orders.orderNumber
INNER JOIN customers ON customers.customerNumber = orders.customerNumber
INNER JOIN employees ON employees.employeeNumber = customers.salesRepEmployeeNumber
WHERE orders.shippedDate BETWEEN '2022-06-01' AND '2022-06-30'
GROUP BY orderdetails.orderNumber
ORDER BY totalPrice DESC
LIMIT 2
;

# affiche les deux meilleurs vendeur du mois de juillet 2022
SELECT orders.shippedDate, orders.orderNumber, employees.employeeNumber, employees.lastName, employees.firstName, SUM(orderdetails.quantityOrdered * orderdetails.priceEach) AS totalPrice
FROM orders
INNER JOIN orderdetails ON orderdetails.orderNumber = orders.orderNumber
INNER JOIN customers ON customers.customerNumber = orders.customerNumber
INNER JOIN employees ON employees.employeeNumber = customers.salesRepEmployeeNumber
WHERE orders.shippedDate BETWEEN '2022-07-01' AND '2022-07-31'
GROUP BY orderdetails.orderNumber
ORDER BY totalPrice DESC
LIMIT 2
;

# affiche les deux meilleurs vendeur du mois de août 2022
SELECT orders.shippedDate, orders.orderNumber, employees.employeeNumber, employees.lastName, employees.firstName, SUM(orderdetails.quantityOrdered * orderdetails.priceEach) AS totalPrice
FROM orders
INNER JOIN orderdetails ON orderdetails.orderNumber = orders.orderNumber
INNER JOIN customers ON customers.customerNumber = orders.customerNumber
INNER JOIN employees ON employees.employeeNumber = customers.salesRepEmployeeNumber
WHERE orders.shippedDate BETWEEN '2022-08-01' AND '2022-08-31'
GROUP BY orderdetails.orderNumber
ORDER BY totalPrice DESC
LIMIT 2
;


# affiche les deux meilleurs vendeur du mois de septembre 2022 - à venir -
SELECT orders.shippedDate, orders.orderNumber, employees.employeeNumber, employees.lastName, employees.firstName, SUM(orderdetails.quantityOrdered * orderdetails.priceEach) AS totalPrice
FROM orders
INNER JOIN orderdetails ON orderdetails.orderNumber = orders.orderNumber
INNER JOIN customers ON customers.customerNumber = orders.customerNumber
INNER JOIN employees ON employees.employeeNumber = customers.salesRepEmployeeNumber
WHERE orders.shippedDate BETWEEN '2022-09-01' AND '2022-09-30'
GROUP BY orderdetails.orderNumber
ORDER BY totalPrice DESC
LIMIT 2
;