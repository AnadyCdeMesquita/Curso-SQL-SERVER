use ContosoRetailDW

select 
	ProductKey,
	StoreKey as loja_venda,
	SalesQuantity as quantidade_vendida,
	UnitPrice as preco_unitario,
	sum(SalesQuantity * UnitPrice) as valor_total
	
from FactSales
where ProductKey = 1852
group by rollup (ProductKey, StoreKey, UnitPrice, SalesQuantity)
having sum(SalesQuantity * UnitPrice) > 3000
order by valor_total asc