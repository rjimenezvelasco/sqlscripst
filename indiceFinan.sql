/*
Missing Index Details from SQLQuery8.sql - localhost.Finanzas (sa (51))
The Query Processor estimates that implementing the following index could improve the query cost by 87.8752%.
*/


USE [Finanzas]
GO
CREATE NONCLUSTERED INDEX IDX_MayorTipoEmp
ON [dbo].[Mayor] ([tipo],[empresa])
INCLUDE ([fecha],[cuen],[docu],[deta],[debe])
GO

