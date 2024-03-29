/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
      ,[fecha]
  FROM [DB_Editorial].[dbo].[Autorizacion]
  
SELECT CRYPT_GEN_RANDOM(50) ;


DECLARE @counter smallint;
declare @hex varchar(8);
declare @fecha date;
 
SET @counter = 1;  
WHILE @counter < 365 
   BEGIN  
     SET @hex = CONVERT(VARCHAR(8),CONVERT(VARBINARY(4), dbo.Random(100000,200000,RAND())),2) --DEC2HEX
	 SET @fecha =  convert(date,dateadd(day, @counter,Getdate()))
      SET @counter = @counter + 1  
      INSERT INTO [DB_Editorial].[dbo].[Autorizacion] (code,fecha) VALUES (@hex,@fecha)
   END;  
GO  

PRINT CONVERT(VARCHAR(8),CONVERT(VARBINARY(4), 17),2) --DEC2HEX

--Convert hex string to INT:
PRINT CONVERT(INT,CONVERT(VARBINARY(4),'00000064',2)) --HEX2DEC

