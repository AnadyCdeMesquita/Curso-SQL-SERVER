use ContosoRetailDW

set dateformat YMD
select
Datekey
from DimDate
where DateKey between '2005-01-01' AND '2006-12-30'