update FROM [DB_Editorial].[dbo].[Contrato]
set SubEstado = 'CERRADO'
where Estado ='CERRADO';

update FROM [DB_Editorial].[dbo].[Contrato]
set SubEstado = ''
where Estado ='SIN VERIFICAR';

update FROM [DB_Editorial].[dbo].[Contrato]
set SubEstado = 'VERIFICADO'
where Estado ='ABIERTO';

-- DEV PARCIAL
update FROM [DB_Editorial].[dbo].[Contrato]
set SubEstado = 'DEVOLUCION PARCIAL'
where Estado ='DEVOLUCION PARCIAL';

update FROM [DB_Editorial].[dbo].[Contrato]
set Estado = 'ABIERTO'
where SubEstado ='DEVOLUCION PARCIAL';
-- Cuenta problema

update FROM [DB_Editorial].[dbo].[Contrato]
set SubEstado = 'CUENTA PROBLEMA'
where Estado ='CUENTA PROBLEMA';

update FROM [DB_Editorial].[dbo].[Contrato]
set Estado = 'ABIERTO'
where SubEstado ='CUENTA PROBLEMA';

-- desc Asesor
update FROM [DB_Editorial].[dbo].[Contrato]
set SubEstado = 'DESC. AL ASESOR'
where Estado ='DESC. AL ASESOR';

update FROM [DB_Editorial].[dbo].[Contrato]
set Estado = 'ABIERTO'
where SubEstado ='DESC. AL ASESOR';

--verificado

update FROM [DB_Editorial].[dbo].[Contrato]
set SubEstado = 'VERIFICADO'
where Estado ='VERIFICADO';

update FROM [DB_Editorial].[dbo].[Contrato]
set Estado = 'ABIERTO'
where SubEstado ='VERIFICADO';

--Devolucion

update FROM [DB_Editorial].[dbo].[Contrato]
set SubEstado = 'PÉRDIDA'
where Estado ='PÉRDIDA';

update FROM [DB_Editorial].[dbo].[Contrato]
set Estado = 'CERRADO'
where SubEstado ='PÉRDIDA';

