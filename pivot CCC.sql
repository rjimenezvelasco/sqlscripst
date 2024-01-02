 /*update dbo.rep_ccc
 set mes = month(fecha)*/
 
 select 
 id_ccc,
 tipo,
 [1],
 [2]
 FROM
(SELECT
	  id_ccc,
	  mes,
	  tipo,
      --convert(decimal(18,2),valor) as valor
      valor
    FROM dbo.rep_ccc
    where tipo !='Permisible' and  id_ccc  in ( 27,28)
    ) AS SourceTable 
PIVOT
(
count(valor)
FOR mes IN ([1], [2])

) AS PivotTable


---