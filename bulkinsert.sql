USE Stage
BULK INSERT cvf  
FROM 'D:\Backs\cvfD2.csv'  
WITH  
(  
FIRSTROW = 2,  
-- DATAFILETYPE = 'char',  
-- MAXERRORS = 100,  
FIELDTERMINATOR = ';',  
ROWTERMINATOR = '\n'  
);