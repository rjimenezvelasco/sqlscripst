USE Stage
BULK INSERT maestrodeltatmp 
FROM 'D:\BI\marcelo\txt\maestroitems.csv'  
WITH  
(  
FIRSTROW = 2,  
-- DATAFILETYPE = 'char',  
-- MAXERRORS = 100,  
FIELDTERMINATOR = '|',  
ROWTERMINATOR = '\n'  
);