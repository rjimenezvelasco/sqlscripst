USE Stage
go

TRUNCATE TABLE stockHistNew_temp
GO

BULK INSERT stockHistNew_temp
FROM 'D:\BI\Marcelo\txt\stock22052019.csv'  
WITH  
(  
FIRSTROW = 2,  
-- DATAFILETYPE = 'char',  
-- MAXERRORS = 100,  
FIELDTERMINATOR = '|',  
ROWTERMINATOR = '\n'  
);