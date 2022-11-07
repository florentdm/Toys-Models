USE toys_and_models;

# efface les vues
#DROP VIEW categoryQuantities;
#DROP VIEW categoryQuantitiesAug22;
#DROP VIEW categoryQuantitiesAug21;

CREATE VIEW categoryQuantities AS (
									SELECT orders.shippedDate, products.productLine, orderdetails.quantityOrdered
									FROM orderdetails
									INNER JOIN products ON products.productCode = orderdetails.productCode
									INNER JOIN orders ON orders.orderNumber = orderdetails.orderNumber
									#GROUP BY products.productLine
									);


/*
# comparaison des quantités vendues septembre 22 vs septembre 21
CREATE VIEW categoryQuantitiesSep22 AS (
										SELECT shippedDate, productLine, SUM(quantityOrdered) AS quantityOrderedSep22 FROM categoryQuantities
										WHERE shippedDate BETWEEN '2022-09-01' AND '2022-09-30'
										GROUP BY productLine
										);
CREATE VIEW categoryQuantitiesSep21 AS (
										SELECT shippedDate, productLine, SUM(quantityOrdered) AS quantityOrderedSep21 FROM categoryQuantities
										WHERE shippedDate BETWEEN '2021-09-01' AND '2021-09-30'
										GROUP BY productLine
										);

SELECT categoryQuantitiesSep22.productLine, quantityOrderedSep21, quantityOrderedSep22, FORMAT(((quantityOrderedSep22/quantityOrderedSep21)-1)*100,2) AS quantityEvolSep22vs21
FROM categoryQuantitiesSep22
INNER JOIN categoryQuantitiesSep21 ON categoryQuantitiesSep21.productLine = categoryQuantitiesSep22.productLine
;
*/


# comparaison des quantités vendues août 22 vs août 21
CREATE VIEW categoryQuantitiesAug22 AS (
										SELECT shippedDate, productLine, SUM(quantityOrdered) AS quantityOrderedAug22 FROM categoryQuantities
										WHERE shippedDate BETWEEN '2022-08-01' AND '2022-08-31'
										GROUP BY productLine
										);
CREATE VIEW categoryQuantitiesAug21 AS (
										SELECT shippedDate, productLine, SUM(quantityOrdered) AS quantityOrderedAug21 FROM categoryQuantities
										WHERE shippedDate BETWEEN '2021-08-01' AND '2021-08-31'
										GROUP BY productLine
										);

                                        
SELECT categoryQuantitiesAug22.productLine, quantityOrderedAug21, quantityOrderedAug22, FORMAT(((quantityOrderedAug22/quantityOrderedAug21)-1)*100,2) AS quantityEvolAug22vs21
FROM categoryQuantitiesAug22
INNER JOIN categoryQuantitiesAug21 ON categoryQuantitiesAug21.productLine = categoryQuantitiesAug22.productLine
;


# comparaison des quantités vendues juil 22 vs juil 21
CREATE VIEW categoryQuantitiesJul22 AS (
										SELECT shippedDate, productLine, SUM(quantityOrdered) AS quantityOrderedJul22 FROM categoryQuantities
										WHERE shippedDate BETWEEN '2022-07-01' AND '2022-07-31'
										GROUP BY productLine
										);
CREATE VIEW categoryQuantitiesJul21 AS (
										SELECT shippedDate, productLine, SUM(quantityOrdered) AS quantityOrderedJul21 FROM categoryQuantities
										WHERE shippedDate BETWEEN '2021-07-01' AND '2021-07-31'
										GROUP BY productLine
										);
                                        
SELECT categoryQuantitiesJul22.productLine, quantityOrderedJul21, quantityOrderedJul22, FORMAT(((quantityOrderedJul22/quantityOrderedJul21)-1)*100,2) AS quantityEvolJul22vs21
FROM categoryQuantitiesJul22
INNER JOIN categoryQuantitiesJul21 ON categoryQuantitiesJul21.productLine = categoryQuantitiesJul22.productLine
;


# comparaison des quantités vendues juin 22 vs juin 21
CREATE VIEW categoryQuantitiesJun22 AS (
										SELECT shippedDate, productLine, SUM(quantityOrdered) AS quantityOrderedJun22 FROM categoryQuantities
										WHERE shippedDate BETWEEN '2022-06-01' AND '2022-06-30'
										GROUP BY productLine
										);
CREATE VIEW categoryQuantitiesJun21 AS (
										SELECT shippedDate, productLine, SUM(quantityOrdered) AS quantityOrderedJun21 FROM categoryQuantities
										WHERE shippedDate BETWEEN '2021-06-01' AND '2021-06-30'
										GROUP BY productLine
										);
                                        
SELECT categoryQuantitiesJun22.productLine, quantityOrderedJun21, quantityOrderedJun22, FORMAT(((quantityOrderedJun22/quantityOrderedJun21)-1)*100,2) AS quantityEvolJun22vs21
FROM categoryQuantitiesJun22
INNER JOIN categoryQuantitiesJun21 ON categoryQuantitiesJun21.productLine = categoryQuantitiesJun22.productLine
;

# comparaison des quantités vendues mai 22 vs mai 21
CREATE VIEW categoryQuantitiesMay22 AS (
										SELECT shippedDate, productLine, SUM(quantityOrdered) AS quantityOrderedMay22 FROM categoryQuantities
										WHERE shippedDate BETWEEN '2022-05-01' AND '2022-05-31'
										GROUP BY productLine
										);
CREATE VIEW categoryQuantitiesMay21 AS (
										SELECT shippedDate, productLine, SUM(quantityOrdered) AS quantityOrderedMay21 FROM categoryQuantities
										WHERE shippedDate BETWEEN '2021-05-01' AND '2021-05-31'
										GROUP BY productLine
										);
                                        
SELECT categoryQuantitiesMay22.productLine, quantityOrderedMay21, quantityOrderedMay22, FORMAT(((quantityOrderedMay22/quantityOrderedMay21)-1)*100,2) AS quantityEvolMay22vs21
FROM categoryQuantitiesMay22
INNER JOIN categoryQuantitiesMay21 ON categoryQuantitiesMay21.productLine = categoryQuantitiesMay22.productLine
;

# comparaison des quantités vendues avril 22 vs avril 21
CREATE VIEW categoryQuantitiesApr22 AS (
										SELECT shippedDate, productLine, SUM(quantityOrdered) AS quantityOrderedApr22 FROM categoryQuantities
										WHERE shippedDate BETWEEN '2022-04-01' AND '2022-04-30'
										GROUP BY productLine
										);
CREATE VIEW categoryQuantitiesApr21 AS (
										SELECT shippedDate, productLine, SUM(quantityOrdered) AS quantityOrderedApr21 FROM categoryQuantities
										WHERE shippedDate BETWEEN '2021-04-01' AND '2021-04-30'
										GROUP BY productLine
										);
                                        
SELECT categoryQuantitiesApr22.productLine, quantityOrderedApr21, quantityOrderedApr22, FORMAT(((quantityOrderedApr22/quantityOrderedApr21)-1)*100,2) AS quantityEvolApr22vs21
FROM categoryQuantitiesApr22
INNER JOIN categoryQuantitiesApr21 ON categoryQuantitiesApr21.productLine = categoryQuantitiesApr22.productLine
;

# comparaison des quantités vendues mars 22 vs mars 21
CREATE VIEW categoryQuantitiesMar22 AS (
										SELECT shippedDate, productLine, SUM(quantityOrdered) AS quantityOrderedMar22 FROM categoryQuantities
										WHERE shippedDate BETWEEN '2022-03-01' AND '2022-03-31'
										GROUP BY productLine
										);
CREATE VIEW categoryQuantitiesMar21 AS (
										SELECT shippedDate, productLine, SUM(quantityOrdered) AS quantityOrderedMar21 FROM categoryQuantities
										WHERE shippedDate BETWEEN '2021-03-01' AND '2021-03-31'
										GROUP BY productLine
										);
                                        
SELECT categoryQuantitiesMar22.productLine, quantityOrderedMar21, quantityOrderedMar22, FORMAT(((quantityOrderedMar22/quantityOrderedMar21)-1)*100,2) AS quantityEvolMar22vs21
FROM categoryQuantitiesMar22
INNER JOIN categoryQuantitiesMar21 ON categoryQuantitiesMar21.productLine = categoryQuantitiesMar22.productLine
;


# comparaison des quantités vendues février 22 vs février 21
CREATE VIEW categoryQuantitiesFeb22 AS (
										SELECT shippedDate, productLine, SUM(quantityOrdered) AS quantityOrderedFeb22 FROM categoryQuantities
										WHERE shippedDate BETWEEN '2022-02-01' AND '2022-02-28'
										GROUP BY productLine
										);
CREATE VIEW categoryQuantitiesFeb21 AS (
										SELECT shippedDate, productLine, SUM(quantityOrdered) AS quantityOrderedFeb21 FROM categoryQuantities
										WHERE shippedDate BETWEEN '2021-02-01' AND '2021-02-28'
										GROUP BY productLine
										);
                                        
SELECT categoryQuantitiesFeb22.productLine, quantityOrderedFeb21, quantityOrderedFeb22, FORMAT(((quantityOrderedFeb22/quantityOrderedFeb21)-1)*100,2) AS quantityEvolFeb22vs21
FROM categoryQuantitiesFeb22
INNER JOIN categoryQuantitiesFeb21 ON categoryQuantitiesFeb21.productLine = categoryQuantitiesFeb22.productLine
;


# comparaison des quantités vendues janvier 22 vs janvier 21
CREATE VIEW categoryQuantitiesJan22 AS (
										SELECT shippedDate, productLine, SUM(quantityOrdered) AS quantityOrderedJan22 FROM categoryQuantities
										WHERE shippedDate BETWEEN '2022-01-01' AND '2022-01-31'
										GROUP BY productLine
										);
CREATE VIEW categoryQuantitiesJan21 AS (
										SELECT shippedDate, productLine, SUM(quantityOrdered) AS quantityOrderedJan21 FROM categoryQuantities
										WHERE shippedDate BETWEEN '2021-01-01' AND '2021-01-31'
										GROUP BY productLine
										);
                                        
SELECT categoryQuantitiesJan22.productLine, quantityOrderedJan21, quantityOrderedJan22, FORMAT(((quantityOrderedJan22/quantityOrderedJan21)-1)*100,2) AS quantityEvolJan22vs21
FROM categoryQuantitiesJan22
INNER JOIN categoryQuantitiesJan21 ON categoryQuantitiesJan21.productLine = categoryQuantitiesJan22.productLine
;


