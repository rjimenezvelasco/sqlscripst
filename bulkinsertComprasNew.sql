USE  Stage
BULK INSERT bi.Importacion_tmp 
FROM 'D:\BI\Marcelo\txt\compra310319_1.csv'  
WITH  
(  
FIRSTROW = 2,  
-- DATAFILETYPE = 'char',  
-- MAXERRORS = 100,  
FIELDTERMINATOR = '|',  
ROWTERMINATOR = '\n'  
);