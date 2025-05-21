use ContosoRetailDW
select top 100
datekey,
datepart(dayofyear, datekey) as dia_do_ano,
datepart(weekday, datekey) as dia_semana_numero, -- retorna o numero do dia,
datename(weekday, datekey) as dia_semana_string --retona um string
from FactOnlineSales
where datepart(month, datekey) = 01 --and datepart(year, datekey) = 2009 and datepart(day, datekey) = 31
order by datekey desc

select
datepart(weekday, getdate()+3) as dia_semana