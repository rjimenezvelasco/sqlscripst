  declare @fecha_actual date='2019-02-28'
  
  SET NOCOUNT ON;
	
  declare @fecha_fin date = @fecha_actual;
  set @fecha_fin = DATEADD(dd,-(DAY(@fecha_fin)),@fecha_fin)
   
  declare @dif int = 0
  declare @fecha_ini date=DATEADD(mm, -12, @fecha_fin)
  
  set @fecha_ini = DATEADD(dd,-(DAY(DATEADD(mm,1,@fecha_ini))-1),DATEADD(mm,1,@fecha_ini))
		  
		SELECT 
		PROVEEDOR,
		item,
		descripcion, 
		isnull([1],0) as [1],
		isnull([2],0) as [2],
		isnull([3],0) as [3],
		isnull([4],0) as [4],
		isnull([5],0) as [5],
		isnull([6],0) as [6],
		isnull([7],0) as [7],
		isnull([8],0) as [8],
		isnull([9],0) as [9],
		isnull([10],0) as [10],
		isnull([11],0) as [11],
		isnull([12],0) as [12],
		dbo.contar([1])+ dbo.contar([2])+dbo.contar([3])+dbo.contar([4])+dbo.contar([5])+dbo.contar([6])+dbo.contar([7])+dbo.contar([8])
		+dbo.contar([9])+dbo.contar([10])+dbo.contar([11])+dbo.contar([12]) as no_ventas,

		isnull([1],0)+ isnull([2],0) + isnull([3],0)+ isnull([4],0)+isnull([5],0)+
		isnull([6],0)+isnull([7],0)+isnull([8],0)+isnull([9],0)+isnull([10],0)+isnull([11],0)+isnull([12],0) as SumTotal,
		(isnull([1],0)+ isnull([2],0) + isnull([3],0)+ isnull([4],0)+isnull([5],0)+
		isnull([6],0)+isnull([7],0)+isnull([8],0)+isnull([9],0)+isnull([10],0)+isnull([11],0)+isnull([12],0))/12 as Promedio,
		dbo.Median([1], [2], [3], [4],[5],[6],[7],[8],[9],[10],[11],[12]) as Mediana,
		dbo.PromLast6Mes([6],[7],[8],[9],[10],[11]) as Prom,
		Round(dbo.PromLast6Mes([6],[7],[8],[9],[10],[11]),0) as Promedio_seis_meses_round,
		dbo.stockItemN(item,@fecha_fin) as stock,
		dbo.PUItem(item) as pu


		into AnalisisPromTmp
		FROM
		(SELECT
			  PROVEEDOR,
			  item,
			  descripcion
			  ,mes
			  ,isnull(CANTIDAD,0) as Cantidad
			FROM [Stage].[dbo].[ventas18]
			where fecha >= @fecha_ini and fecha<=@fecha_fin
		   -- WHERE PROVEEDOR = 'JOHNSON &'
			) AS SourceTable 
		PIVOT
		(
		SUM(Cantidad) 
		FOR mes IN ([1], [2], [3], [4],[5],[6],[7],[8],[9],[10],[11],[12])

		) AS PivotTable

INSERT INTO [Stage].[dbo].[AnalisisPromN]
           ([fecha]
           ,[idproveedor]
           ,[PROVEEDOR]
           ,[unidad_por_caja]
           ,[item]
           ,[descripcion]
           ,[1]
           ,[2]
           ,[3]
           ,[4]
           ,[5]
           ,[6]
           ,[7]
           ,[8]
           ,[9]
           ,[10]
           ,[11]
           ,[12]
           ,[no_ventas]
           ,[SumTotal]
           ,[Promedio]
           ,[Mediana]
           ,[Prom]
           ,[Promedio_seis_meses_round]
           ,[stock]
           ,[PU])
           
     SELECT 
      '2019-02-28'
      ,(select idproveedor from dbo.Proveedor where rtrim(descripcion) = rtrim(proveedor)) as idp
      ,PROVEEDOR
      ,''
      ,[item]
      ,[descripcion]
      ,[1]
      ,[2]
      ,[3]
      ,[4]
      ,[5]
      ,[6]
      ,[7]
      ,[8]
      ,[9]
      ,[10]
      ,[11]
      ,[12]
      ,[no_ventas]
      ,[SumTotal]
      ,[Promedio]
      ,[Mediana]
      ,[Prom]
      ,[Promedio_seis_meses_round]
      ,[stock]
      ,pu
       FROM [Stage].[dbo].AnalisisPromTmp;
    
 --drop table [Stage].[dbo].AnalisisPromTmp; 
 
  select * 
  FROM [Stage].[dbo].AnalisisPromTmp