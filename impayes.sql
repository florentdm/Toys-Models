USE toys_and_models;
CREATE VIEW
CAview AS (
SELECT
c.country AS pays,
orderDate,
(od.quantityOrdered * PriceEach) AS total_ca_M1
FROM customers AS c
JOIN orders AS O ON o.customerNumber = c.customerNumber
JOIN orderdetails od ON od.orderNumber = o.orderNumber
WHERE DATEDIFF(NOW(), orderDate) <= 60
GROUP BY c.country
ORDER BY total_ca_M1 DESC);
ALTER VIEW CAview AS (
SELECT customerNumber, sum(quantityOrdered * priceEach) AS CA, status
FROM orders
LEFT JOIN orderdetails ON orderdetails.orderNumber = orders.orderNumber
GROUP BY customerNumber
HAVING orders.status != 'cancelled');
CREATE VIEW paiementsview AS (
SELECT customerNumber, sum(amount) AS paiement
FROM payments
GROUP BY customerNumber);
SELECT customers.customerNumber, customerName, paiement, CA, (CA - paiement) AS reste_a_regler, status
FROM customers
JOIN paiementsview ON paiementsview.customerNumber = customers.customerNumber
JOIN CAview ON CAview.customerNumber = customers.customerNumber
WHERE (CA - paiement) != 0
ORDER by 5 DESC;
SELECT * FROM CAview;
SELECT * FROM paiementsview;