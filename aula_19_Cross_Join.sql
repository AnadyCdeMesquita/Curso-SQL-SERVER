use ContosoRetailDW
select DISTINCT top 100
	 p.PromotionKey, 
	 s.ProductCategoryName
from FactSales as p
cross join DimProductCategory as s	
order by  p.PromotionKey asc
