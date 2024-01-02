select item ,centro,fecha,
 desv, power(desv,0.083333)
--ROUND(EXP(SUM(LOG(desv))),1)
from
(
select item,centro,fecha
      ,[1]*[2]*[3]*[4]*[5]*[6]*[7]*[8]*[9]*[10]*[11]*[12] as desv

from
 [Stage].[dbo].[AnalisisProm]
 where item ='13336' and centro ='CONTROL DE INFECCIONES' and fecha ='2019-02-28'
) x