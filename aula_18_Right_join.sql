use ContosoRetailDW
select DISTINCT
	p.ProductKey as tab1,
	s.ProductKey as tab2
from DimProduct as p
right join FactSales as s
on p.ProductKey = s.ProductKey
