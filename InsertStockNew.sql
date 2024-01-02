INSERT INTO [Stage].[dbo].[stockHist]
           ([fecha]
           ,[agen]
           ,[item]
           ,[itedes]
           ,[lote]
           ,[iteun]
           ,[stock]
           ,[cu]
           ,[find]
           ,[cu_usd]
           ,[iteori]
           ,[itecli]
           ,[itecen]
           ,[itelin]
           ,[iteubi]
           ,[agesuc]
		)
     SELECT 
       '2019-04-25'
	   ,[agen]
      ,[item]
      ,[itedes]
      ,[lote]
      ,[iteun]
      ,[stock]
      ,[cu]
      ,[find]
      ,[cu_usd]
      ,[iteori]
      ,[itecli]
      ,[itecen]
      ,[itelin]
      ,[iteubi]
      ,[agesuc]
  FROM [Stage].[dbo].[stockHistNew_temp]
GO





