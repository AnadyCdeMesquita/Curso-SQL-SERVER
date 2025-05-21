
select top 100
	Sales.SalesKey,
	Sales.ProductKey,
	Sales.SalesAmount,
	Produto.ProductName,
	Subcategoria.ProductSubcategoryKey,
	t4.ProductCategoryName
from FactSales as Sales
inner join DimProduct as Produto
on Sales.ProductKey = Produto.ProductKey
inner join DimProductSubcategory as Subcategoria
on Produto.ProductSubcategoryKey = Subcategoria.ProductSubcategoryKey
inner join DimProductCategory as t4
on Subcategoria.ProductCategoryKey = t4.ProductCategoryKey