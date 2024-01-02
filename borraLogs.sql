ALTER DATABASE Finanzas
SET RECOVERY SIMPLE;
GO
-- Shrink the truncated log file to 1 MB.
DBCC SHRINKFILE (Finanzas_log, 1);
GO
-- Reset the database recovery model.
ALTER DATABASE Finanzas
SET RECOVERY FULL;