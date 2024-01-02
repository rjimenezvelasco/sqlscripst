INSERT INTO [Finanzas].[dbo].[Mayor_Proc]
           ([id_empresa]
           ,[empresa]
           ,[no_comprobante]
           ,[fecha]
           ,[nombre_mes]
           ,[mes]
           ,[anio]
           ,[agen]
           ,[cuen]
           ,[cuedes]
           ,[docu]
           ,[venc]
           ,[deta]
           ,[debe]
           ,[haber]
           ,[debe_d]
           ,[haber_d]
           ,[mnda]
           ,[tcambio]
           ,[refe])
select 
id_empresa,
empresa,
rtrim(corr)+'-'+RTRIM(tipo)+'-'+RTRIM(peri)+'-'+RTRIM(num) as no_comprobante,
fecha,
dbo.Mes(month(fecha)) as nombre_mes,
MONTH(fecha) as mes,
YEAR(fecha) as anio,
agen,
cuen,
(select distinct p.cuedes  from PlanCuentas p where p.cuenta = cuen) as cuedes,
docu,
venc,
deta,
debe,
haber,
debe_d,
haber_d,
mnda,
tcambio,
refe
 from [Finanzas].[dbo].[Mayor]
 where deta<>'Saldo Inicial' and fecha >='2019-06-01'