use ContosoRetailDW
select 
ProductKey
from DimProduct
where ClassName = 'Economy'


select 
	ProductKey
from FactSales
where ProductKey in (select 
ProductKey
from DimProduct
where ClassName = 'Economy'

)