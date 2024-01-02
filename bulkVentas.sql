USE Stage
go

truncate table ventasTemp;
go

BULK INSERT ventasTemp
FROM 'D:\BI\Marcelo\txt\ventas_30042019.csv'  
WITH  
(  
FIRSTROW = 2,  
-- DATAFILETYPE = 'char',  
-- MAXERRORS = 100,  
FIELDTERMINATOR = '|',  
ROWTERMINATOR = '\n'  
);