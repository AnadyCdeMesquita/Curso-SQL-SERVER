use ContosoRetailDW

select top 20
*
from FactSales

select 
max(UnitPrice)
from FactSales

select top 1000
	ProductKey
from FactSales
where ProductKey < (select
max(UnitPrice)
from FactSales)