use ContosoRetailDW
select DISTINCT
	p.ProductKey,
	s.ProductKey
from DimProduct as p
left join FactSales as s
on p.ProductKey = s.ProductKey
where s.ProductKey is null

