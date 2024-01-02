SELECT p.*,
  ( SELECT SUM(importe_pago)
  FROM [DB_Araucaria].[dbo].[vw_plan_pagos_propietario]
  WHERE cd_propietario = p.cd_propietario) as pagos

   FROM vw_vivienda_prop p