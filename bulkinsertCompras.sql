USE  BI_Gedesa
BULK INSERT Compras 
FROM 'D:\BI\Marcelo\ComprasFull8.csv'  
WITH  
(  
FIRSTROW = 2,  
-- DATAFILETYPE = 'char',  
-- MAXERRORS = 100,  
FIELDTERMINATOR = '|',  
ROWTERMINATOR = '\n'  
);