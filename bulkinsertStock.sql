USE Stage
truncate table stockTemp;

USE Stage
BULK INSERT stockTemp 
FROM 'D:\BI\Marcelo\stock2018\stocK280219.csv'  
WITH  
(  
FIRSTROW = 2,  
-- DATAFILETYPE = 'char',  
-- MAXERRORS = 100,  
FIELDTERMINATOR = '|',  
ROWTERMINATOR = '\n'  
);