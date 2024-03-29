USE [Finanzas]
GO
/****** Object:  StoredProcedure [dbo].[Import_Mayor]    Script Date: 08/07/2019 10:56:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[Import_Mayor]
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

		truncate table dbo.mayor_tmp;

		BULK INSERT mayor_tmp
		FROM 'C:\progs\mayor_0611.csv'  
		WITH  
		(  
		FIRSTROW = 2,  
		-- DATAFILETYPE = 'char',  
		-- MAXERRORS = 100,  
		FIELDTERMINATOR = '|',  
		ROWTERMINATOR = '\n'  
		);
		
		
		/* Update datos de las empresas */
		update mayor_tmp 
		set id_empresa= a.id_empresa,
		empresa = a.empresa
		/*select 
		a.id_empresa,
		a.empresa,
		m.* */
		from mayor_tmp m
		inner join Almacen_Empresa a on m.agen=a.agencia
		where fecha >='2019-06-01'
			
		delete FROM [Finanzas].[dbo].[Mayor]
		 where fecha >= '2019-06-01'
  	
		INSERT INTO [Finanzas].[dbo].[Mayor]
           (
           id_empresa
           ,[empresa]
           ,[corr]
           ,[tipo]
           ,[peri]
           ,[num]
           ,[fecha]
           ,[vend]
           ,[clas]
           ,[regi]
           ,[agen]
           ,[cuen]
           ,[docu]
           ,[venc]
           ,[deta]
           ,[debe]
           ,[haber]
           ,[debe_d]
           ,[haber_d]
           ,[mnda]
           ,[tcambio]
           ,[refe]
           ,[hist]
           ,[suc]
           ,[orig]
           ,[libr]
           ,[acti]
           ,[modo]
           ,[flujo]
           ,[banc]
           ,[modif]
           ,[fcon]
           ,[modif2]
           ,[flag])
   SELECT 
       a.id_empresa
	  ,a.empresa
      ,[corr]
      ,[tipo]
      ,[peri]
      ,[num]
      ,[fecha]
      ,[vend]
      ,[clas]
      ,[regi]
      ,[agen]
      ,[cuen]
      ,[docu]
      ,[venc]
      ,[deta]
      ,[debe]
      ,[haber]
      ,[debe_d]
      ,[haber_d]
      ,[mnda]
      ,[tcambio]
      ,[refe]
      ,[hist]
      ,[suc]
      ,[orig]
      ,[libr]
      ,[acti]
      ,[modo]
      ,[flujo]
      ,[banc]
      ,[modif]
      ,[fcon]
      ,[modif2]
      ,[flag]
  FROM [Finanzas].[dbo].[mayor_tmp] m
  inner join Almacen_Empresa a on m.agen=a.agencia
 -- where fecha >='2019-04-01'
		
END
