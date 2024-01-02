INSERT INTO [Stage].[dbo].[maestrodelta]
           ([ITEM]
           ,[ITEDES]
           ,[ITEDAL]
           ,[ITEUNI]
           ,[ITEOTR]
           ,[ITECNV]
           ,[ITEMIN]
           ,[ITESTK]
           ,[ITENEG]
           ,[ITEVIG]
           ,[ITELOT]
           ,[ITEPRE]
           ,[ITEGRU]
           ,[ITECUE]
           ,[ITEBAR]
           ,[ITEORI]
           ,[ITEUBI]
           ,[ITECEN]
           ,[ITELIN]
           ,[ITECLA]
           ,[ITECLI]
           ,[ITEMAR]
           ,[ITEFCH]
           ,[ITESUS]
           ,[ITEALT]
           ,[ITECOM]
           ,[TEXTO]
           ,[ITEOBS2]
           ,[ITEOBS3])
select * from dbo.maestrodeltatmp
where item not in (select item  from dbo.maestrodelta)


select item,itedes, id_centro,itecen from dbo.maestrodelta
where itecen like 'MATERIAL D'



select m.item,m.itecen,c.id_centro from maestrodelta m
inner join centro c on c.descrip = m.itecen
where m.id_centro is null


update maestrodelta 
set id_centro = c.id_centro
from maestrodelta m
inner join centro c on c.cendes = m.itecen
where m.id_centro is null
  

update maestrodelta 
set id_centro = c.id_centro
from maestrodelta m
inner join centro c on c.descrip = m.itecen
where m.id_centro is null

