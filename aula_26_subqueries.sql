use ContosoRetailDW

select
	AVG(unitPrice)
from DimProduct

select
	 ProductKey,
	 unitPrice
from DimProduct
where  unitPrice <= (select
	AVG(unitPrice)
from DimProduct)
order by  unitPrice desc