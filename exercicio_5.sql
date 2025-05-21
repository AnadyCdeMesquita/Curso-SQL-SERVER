use ContosoRetailDW

select top 10 
	Consumidor.customerkey,
	Consumidor.FirstName,
	Consumidor.LastName,
	Geo.CityName,
	Loja.StoreType,
	Loja.StoreName,
	Produtos.ProductName,
	Vendas.SalesQuantity,
	sum(Vendas.SalesAmount) as Total_Vendas
	

from DimCustomer as Consumidor
inner join DimGeography as Geo
on Consumidor.GeographyKey = Geo.GeographyKey
inner join DimStore as Loja
on Loja.GeographyKey = Geo.GeographyKey
inner join FactSales as Vendas
on Loja.StoreKey = Vendas.StoreKey
inner join DimProduct as Produtos
on Vendas.ProductKey = Produtos.ProductKey

where Geo.CityName in ('Seattle', 'Berlin')
group by rollup(Consumidor.customerkey, Consumidor.FirstName, Consumidor.LastName, Geo.CityName, Loja.StoreType, Loja.StoreName, Produtos.ProductName, Vendas.SalesQuantity)
having sum(Vendas.SalesAmount) <= 7535
order by Total_Vendas desc, Geo.CityName asc, Consumidor.customerkey asc