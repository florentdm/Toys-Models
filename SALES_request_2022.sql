USE toys_and_models;

SELECT 	categoryQuantitiesJan22.productLine, quantityOrderedJan21, quantityOrderedJan22, FORMAT(((quantityOrderedJan22/quantityOrderedJan21)-1)*100,2) AS evolJan22vs21,
        quantityOrderedFeb21, quantityOrderedFeb22, FORMAT(((quantityOrderedFeb22/quantityOrderedFeb21)-1)*100,2) AS evolFeb22vs21,
        quantityOrderedMar21, quantityOrderedMar22, FORMAT(((quantityOrderedMar22/quantityOrderedMar21)-1)*100,2) AS evolMar22vs21,
        quantityOrderedApr21, quantityOrderedApr22, FORMAT(((quantityOrderedApr22/quantityOrderedApr21)-1)*100,2) AS evolApr22vs21,
        quantityOrderedMay21, quantityOrderedMay22, FORMAT(((quantityOrderedMay22/quantityOrderedMay21)-1)*100,2) AS evolMay22vs21,
        quantityOrderedJun21, quantityOrderedJun22, FORMAT(((quantityOrderedJun22/quantityOrderedJun21)-1)*100,2) AS evolJun22vs21,
        quantityOrderedJul21, quantityOrderedJul22, FORMAT(((quantityOrderedJul22/quantityOrderedJul21)-1)*100,2) AS evolJul22vs21,
        quantityOrderedAug21, quantityOrderedAug22, FORMAT(((quantityOrderedAug22/quantityOrderedAug21)-1)*100,2) AS evolAug22vs21-- ,
		-- quantityOrderedSep21, quantityOrderedSep22, FORMAT(((quantityOrderedSep22/quantityOrderedSep21)-1)*100,2) AS evolSep22vs21
FROM categoryQuantitiesJan22
LEFT JOIN categoryQuantitiesJan21 ON categoryQuantitiesJan21.productLine = categoryQuantitiesJan22.productLine
LEFT JOIN categoryQuantitiesFeb21 ON categoryQuantitiesFeb21.productLine = categoryQuantitiesJan22.productLine
LEFT JOIN categoryQuantitiesFeb22 ON categoryQuantitiesFeb22.productLine = categoryQuantitiesJan22.productLine
LEFT JOIN categoryQuantitiesMar21 ON categoryQuantitiesMar21.productLine = categoryQuantitiesJan22.productLine
LEFT JOIN categoryQuantitiesMar22 ON categoryQuantitiesMar22.productLine = categoryQuantitiesJan22.productLine
LEFT JOIN categoryQuantitiesApr21 ON categoryQuantitiesApr21.productLine = categoryQuantitiesJan22.productLine
LEFT JOIN categoryQuantitiesApr22 ON categoryQuantitiesApr22.productLine = categoryQuantitiesJan22.productLine
LEFT JOIN categoryQuantitiesMay21 ON categoryQuantitiesMay21.productLine = categoryQuantitiesJan22.productLine
LEFT JOIN categoryQuantitiesMay22 ON categoryQuantitiesMay22.productLine = categoryQuantitiesJan22.productLine
LEFT JOIN categoryQuantitiesJun21 ON categoryQuantitiesJun21.productLine = categoryQuantitiesJan22.productLine
LEFT JOIN categoryQuantitiesJun22 ON categoryQuantitiesJun22.productLine = categoryQuantitiesJan22.productLine
LEFT JOIN categoryQuantitiesJul21 ON categoryQuantitiesJul21.productLine = categoryQuantitiesJan22.productLine
LEFT JOIN categoryQuantitiesJul22 ON categoryQuantitiesJul22.productLine = categoryQuantitiesJan22.productLine
LEFT JOIN categoryQuantitiesAug21 ON categoryQuantitiesAug21.productLine = categoryQuantitiesJan22.productLine
LEFT JOIN categoryQuantitiesAug22 ON categoryQuantitiesAug22.productLine = categoryQuantitiesJan22.productLine
-- LEFT JOIN categoryQuantitiesSep21 ON categoryQuantitiesSep21.productLine = categoryQuantitiesJan22.productLine
-- LEFT JOIN categoryQuantitiesSep22 ON categoryQuantitiesSep22.productLine = categoryQuantitiesJan22.productLine
;

/*
# SEPTEMBER
SELECT categoryQuantitiesSep22.productLine, quantityOrderedSep21, quantityOrderedSep22, FORMAT(((quantityOrderedSep22/quantityOrderedSep21)-1)*100,2) AS quantityEvolSep22vs21
FROM categoryQuantitiesSep22
INNER JOIN categoryQuantitiesSep21 ON categoryQuantitiesSep21.productLine = categoryQuantitiesSep22.productLine
;

# AUGUST
SELECT categoryQuantitiesAug22.productLine, quantityOrderedAug21, quantityOrderedAug22, FORMAT(((quantityOrderedAug22/quantityOrderedAug21)-1)*100,2) AS quantityEvolAug22vs21
FROM categoryQuantitiesAug22
INNER JOIN categoryQuantitiesAug21 ON categoryQuantitiesAug21.productLine = categoryQuantitiesAug22.productLine
;

# JULY
SELECT categoryQuantitiesJul22.productLine, quantityOrderedJul21, quantityOrderedJul22, FORMAT(((quantityOrderedJul22/quantityOrderedJul21)-1)*100,2) AS quantityEvolJul22vs21
FROM categoryQuantitiesJul22
INNER JOIN categoryQuantitiesJul21 ON categoryQuantitiesJul21.productLine = categoryQuantitiesJul22.productLine
;

# JUNE
SELECT categoryQuantitiesJun22.productLine, quantityOrderedJun21, quantityOrderedJun22, FORMAT(((quantityOrderedJun22/quantityOrderedJun21)-1)*100,2) AS quantityEvolJun22vs21
FROM categoryQuantitiesJun22
INNER JOIN categoryQuantitiesJun21 ON categoryQuantitiesJun21.productLine = categoryQuantitiesJun22.productLine
;

# MAY
SELECT categoryQuantitiesMay22.productLine, quantityOrderedMay21, quantityOrderedMay22, FORMAT(((quantityOrderedMay22/quantityOrderedMay21)-1)*100,2) AS quantityEvolMay22vs21
FROM categoryQuantitiesMay22
INNER JOIN categoryQuantitiesMay21 ON categoryQuantitiesMay21.productLine = categoryQuantitiesMay22.productLine
;

# APRIL
SELECT categoryQuantitiesApr22.productLine, quantityOrderedApr21, quantityOrderedApr22, FORMAT(((quantityOrderedApr22/quantityOrderedApr21)-1)*100,2) AS quantityEvolApr22vs21
FROM categoryQuantitiesApr22
INNER JOIN categoryQuantitiesApr21 ON categoryQuantitiesApr21.productLine = categoryQuantitiesApr22.productLine
;

# MARCH
SELECT categoryQuantitiesMar22.productLine, quantityOrderedMar21, quantityOrderedMar22, FORMAT(((quantityOrderedMar22/quantityOrderedMar21)-1)*100,2) AS quantityEvolMar22vs21
FROM categoryQuantitiesMar22
INNER JOIN categoryQuantitiesMar21 ON categoryQuantitiesMar21.productLine = categoryQuantitiesMar22.productLine
;

#FEBRUARY
SELECT categoryQuantitiesFeb22.productLine, quantityOrderedFeb21, quantityOrderedFeb22, FORMAT(((quantityOrderedFeb22/quantityOrderedFeb21)-1)*100,2) AS quantityEvolFeb22vs21
FROM categoryQuantitiesFeb22
INNER JOIN categoryQuantitiesFeb21 ON categoryQuantitiesFeb21.productLine = categoryQuantitiesFeb22.productLine
;

# JANUARY
SELECT categoryQuantitiesJan22.productLine, quantityOrderedJan21, quantityOrderedJan22, FORMAT(((quantityOrderedJan22/quantityOrderedJan21)-1)*100,2) AS quantityEvolJan22vs21
FROM categoryQuantitiesJan22
INNER JOIN categoryQuantitiesJan21 ON categoryQuantitiesJan21.productLine = categoryQuantitiesJan22.productLine
;
*/USE toys_and_models;

SELECT 	categoryQuantitiesJan22.productLine, quantityOrderedJan21, quantityOrderedJan22, FORMAT(((quantityOrderedJan22/quantityOrderedJan21)-1)*100,2) AS evolJan22vs21,
        quantityOrderedFeb21, quantityOrderedFeb22, FORMAT(((quantityOrderedFeb22/quantityOrderedFeb21)-1)*100,2) AS evolFeb22vs21,
        quantityOrderedMar21, quantityOrderedMar22, FORMAT(((quantityOrderedMar22/quantityOrderedMar21)-1)*100,2) AS evolMar22vs21,
        quantityOrderedApr21, quantityOrderedApr22, FORMAT(((quantityOrderedApr22/quantityOrderedApr21)-1)*100,2) AS evolApr22vs21,
        quantityOrderedMay21, quantityOrderedMay22, FORMAT(((quantityOrderedMay22/quantityOrderedMay21)-1)*100,2) AS evolMay22vs21,
        quantityOrderedJun21, quantityOrderedJun22, FORMAT(((quantityOrderedJun22/quantityOrderedJun21)-1)*100,2) AS evolJun22vs21,
        quantityOrderedJul21, quantityOrderedJul22, FORMAT(((quantityOrderedJul22/quantityOrderedJul21)-1)*100,2) AS evolJul22vs21,
        quantityOrderedAug21, quantityOrderedAug22, FORMAT(((quantityOrderedAug22/quantityOrderedAug21)-1)*100,2) AS evolAug22vs21-- ,
		-- quantityOrderedSep21, quantityOrderedSep22, FORMAT(((quantityOrderedSep22/quantityOrderedSep21)-1)*100,2) AS evolSep22vs21
FROM categoryQuantitiesJan22
LEFT JOIN categoryQuantitiesJan21 ON categoryQuantitiesJan21.productLine = categoryQuantitiesJan22.productLine
LEFT JOIN categoryQuantitiesFeb21 ON categoryQuantitiesFeb21.productLine = categoryQuantitiesJan22.productLine
LEFT JOIN categoryQuantitiesFeb22 ON categoryQuantitiesFeb22.productLine = categoryQuantitiesJan22.productLine
LEFT JOIN categoryQuantitiesMar21 ON categoryQuantitiesMar21.productLine = categoryQuantitiesJan22.productLine
LEFT JOIN categoryQuantitiesMar22 ON categoryQuantitiesMar22.productLine = categoryQuantitiesJan22.productLine
LEFT JOIN categoryQuantitiesApr21 ON categoryQuantitiesApr21.productLine = categoryQuantitiesJan22.productLine
LEFT JOIN categoryQuantitiesApr22 ON categoryQuantitiesApr22.productLine = categoryQuantitiesJan22.productLine
LEFT JOIN categoryQuantitiesMay21 ON categoryQuantitiesMay21.productLine = categoryQuantitiesJan22.productLine
LEFT JOIN categoryQuantitiesMay22 ON categoryQuantitiesMay22.productLine = categoryQuantitiesJan22.productLine
LEFT JOIN categoryQuantitiesJun21 ON categoryQuantitiesJun21.productLine = categoryQuantitiesJan22.productLine
LEFT JOIN categoryQuantitiesJun22 ON categoryQuantitiesJun22.productLine = categoryQuantitiesJan22.productLine
LEFT JOIN categoryQuantitiesJul21 ON categoryQuantitiesJul21.productLine = categoryQuantitiesJan22.productLine
LEFT JOIN categoryQuantitiesJul22 ON categoryQuantitiesJul22.productLine = categoryQuantitiesJan22.productLine
LEFT JOIN categoryQuantitiesAug21 ON categoryQuantitiesAug21.productLine = categoryQuantitiesJan22.productLine
LEFT JOIN categoryQuantitiesAug22 ON categoryQuantitiesAug22.productLine = categoryQuantitiesJan22.productLine
-- LEFT JOIN categoryQuantitiesSep21 ON categoryQuantitiesSep21.productLine = categoryQuantitiesJan22.productLine
-- LEFT JOIN categoryQuantitiesSep22 ON categoryQuantitiesSep22.productLine = categoryQuantitiesJan22.productLine
;

/*
# SEPTEMBER
SELECT categoryQuantitiesSep22.productLine, quantityOrderedSep21, quantityOrderedSep22, FORMAT(((quantityOrderedSep22/quantityOrderedSep21)-1)*100,2) AS quantityEvolSep22vs21
FROM categoryQuantitiesSep22
INNER JOIN categoryQuantitiesSep21 ON categoryQuantitiesSep21.productLine = categoryQuantitiesSep22.productLine
;

# AUGUST
SELECT categoryQuantitiesAug22.productLine, quantityOrderedAug21, quantityOrderedAug22, FORMAT(((quantityOrderedAug22/quantityOrderedAug21)-1)*100,2) AS quantityEvolAug22vs21
FROM categoryQuantitiesAug22
INNER JOIN categoryQuantitiesAug21 ON categoryQuantitiesAug21.productLine = categoryQuantitiesAug22.productLine
;

# JULY
SELECT categoryQuantitiesJul22.productLine, quantityOrderedJul21, quantityOrderedJul22, FORMAT(((quantityOrderedJul22/quantityOrderedJul21)-1)*100,2) AS quantityEvolJul22vs21
FROM categoryQuantitiesJul22
INNER JOIN categoryQuantitiesJul21 ON categoryQuantitiesJul21.productLine = categoryQuantitiesJul22.productLine
;

# JUNE
SELECT categoryQuantitiesJun22.productLine, quantityOrderedJun21, quantityOrderedJun22, FORMAT(((quantityOrderedJun22/quantityOrderedJun21)-1)*100,2) AS quantityEvolJun22vs21
FROM categoryQuantitiesJun22
INNER JOIN categoryQuantitiesJun21 ON categoryQuantitiesJun21.productLine = categoryQuantitiesJun22.productLine
;

# MAY
SELECT categoryQuantitiesMay22.productLine, quantityOrderedMay21, quantityOrderedMay22, FORMAT(((quantityOrderedMay22/quantityOrderedMay21)-1)*100,2) AS quantityEvolMay22vs21
FROM categoryQuantitiesMay22
INNER JOIN categoryQuantitiesMay21 ON categoryQuantitiesMay21.productLine = categoryQuantitiesMay22.productLine
;

# APRIL
SELECT categoryQuantitiesApr22.productLine, quantityOrderedApr21, quantityOrderedApr22, FORMAT(((quantityOrderedApr22/quantityOrderedApr21)-1)*100,2) AS quantityEvolApr22vs21
FROM categoryQuantitiesApr22
INNER JOIN categoryQuantitiesApr21 ON categoryQuantitiesApr21.productLine = categoryQuantitiesApr22.productLine
;

# MARCH
SELECT categoryQuantitiesMar22.productLine, quantityOrderedMar21, quantityOrderedMar22, FORMAT(((quantityOrderedMar22/quantityOrderedMar21)-1)*100,2) AS quantityEvolMar22vs21
FROM categoryQuantitiesMar22
INNER JOIN categoryQuantitiesMar21 ON categoryQuantitiesMar21.productLine = categoryQuantitiesMar22.productLine
;

#FEBRUARY
SELECT categoryQuantitiesFeb22.productLine, quantityOrderedFeb21, quantityOrderedFeb22, FORMAT(((quantityOrderedFeb22/quantityOrderedFeb21)-1)*100,2) AS quantityEvolFeb22vs21
FROM categoryQuantitiesFeb22
INNER JOIN categoryQuantitiesFeb21 ON categoryQuantitiesFeb21.productLine = categoryQuantitiesFeb22.productLine
;

# JANUARY
SELECT categoryQuantitiesJan22.productLine, quantityOrderedJan21, quantityOrderedJan22, FORMAT(((quantityOrderedJan22/quantityOrderedJan21)-1)*100,2) AS quantityEvolJan22vs21
FROM categoryQuantitiesJan22
INNER JOIN categoryQuantitiesJan21 ON categoryQuantitiesJan21.productLine = categoryQuantitiesJan22.productLine
;
*/