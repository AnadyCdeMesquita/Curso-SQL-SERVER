use ContosoRetailDW

select
getdate(),
dateadd(year, 5, getdate()) as ano_adicionado,
dateadd(year, -3, getdate()) as ano_diminuido,
dateadd(hour, 20, getdate()) as hora_aumentada
 

select top 200
datekey,
dateadd(year, 5, Datekey) as ano_adicionado,
dateadd(year, -3, Datekey) as ano_diminuido,
dateadd(hour, 20, Datekey) as hora_aumentada
from DimDate 