use ContosoRetailDW

select
getdate(),
eomonth(getdate()) as ultimo_dia,
eomonth(getdate(), 1) as ultimo_dia_mes_posterior,
eomonth(getdate(), -1) as ultimo_dia_mes_anterior