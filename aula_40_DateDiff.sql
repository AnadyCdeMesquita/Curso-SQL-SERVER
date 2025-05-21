select datediff(DAY, '2023-07-10', getdate()) as 'dia',
datediff(MONTH, '2023-07-10', getdate()) as 'mes',
datediff(YEAR, '2023-07-10', getdate()) as 'ANO'

--DATEDIFF(datepart, startdate, enddate)
--datepart: A unidade de tempo (por exemplo, ano, mês, dia).
--startdatee enddate: As datas ou carimbos de data/hora a serem comparados. O resultado é calculado como enddate - startdate.

use ContosoRetailDW

select top 50
 datekey,
DATEDIFF(day, '2025-01-01', datekey) as dias,
DATEDIFF(month, '2025-01-01', datekey) as meses,
DATEDIFF(year, '2025-01-01', datekey) as anos,
DATEDIFF(hour, '05:00:00', datekey) as horas
from DimDate

select top 50
 datekey,
DATEDIFF(day, '2025-01-01', getdate()) as dias,
DATEDIFF(month, '2025-01-20', getdate()) as meses,
DATEDIFF(year, '2025-01-03', getdate()) as anos,
DATEDIFF(hour, '05:00:00', getdate()) as horas
from DimDate