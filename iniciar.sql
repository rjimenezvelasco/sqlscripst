/****** Script for SelectTopNRows command from SSMS  ******/

truncate table dbo.cvf;

truncate table dbo.ventas;

DBCC CHECKIDENT ('ventas', RESEED, 0);
