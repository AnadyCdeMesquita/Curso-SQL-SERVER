use ContosoRetailDW
select DISTINCT
	p.ProductKey,
	s.ProductKey
from DimProduct as p
full join FactSales as s
on p.ProductKey = s.ProductKey

