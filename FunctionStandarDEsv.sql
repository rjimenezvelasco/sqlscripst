select item ,centro,fecha,stdevp(desv)
from
(
select item,centro,fecha
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

from
 [Stage].[dbo].[AnalisisProm]
 where item ='11537'
) src
UNPIVOT 
(
	desv for st  in (
	  [1]
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
      )
) upvt
group by item,centro,fecha