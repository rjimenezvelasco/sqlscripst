select item,[1], [2], [3], [4],[5],[6],[7],[8],[9],[10],[11],[12]
,no_ventas 
,sumTotal
,no_ventas_cero8
,no_ventas_cero4
 ,case when sumTotal>2 then 'SI' else 'NO' end as ventas_mayor2
 ,case when sumTotal<2 then 'NO'
       else case when (12-no_ventas) >5 then 'NO' else 'SI' end
  end as estado
  ,case when no_ventas_cero8 =8 then case when no_ventas_cero4>1 then 'NUEVO' else '' end									 
        else '' end as nuevo
  ,case when no_ventas_cero8 =8 and no_ventas_cero4>1 then 'ENTRA'
		else case  when sumTotal<2  then 'NO' 
		           else case when (12-no_ventas) >5 then 'NO' else 'ENTRA' end       
		    end
		end as estado
  ,dbo.Maximo([1], [2], [3], [4],[5],[6],[7],[8],[9],[10],[11],[12]) as max
from  AnalisisPromTmp 
--whefecha = '2019-03-31'


