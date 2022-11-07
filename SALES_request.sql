USE toys_and_models;

SELECT products.productLine, SUM(orderdetails.quantityOrdered)
FROM orderdetails
INNER JOIN products ON products.productCode = orderdetails.productCode
GROUP BY products.productLine
;

SELECT orders.shippedDate, products.productLine, SUM(orderdetails.quantityOrdered)
FROM orderdetails
INNER JOIN products ON products.productCode = orderdetails.productCode
INNER JOIN orders ON orders.orderNumber = orderdetails.orderNumber
WHERE orders.shippedDate BETWEEN '2022-08-01' AND '2022-08-31'
GROUP BY products.productLine
;