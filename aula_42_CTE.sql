use ContosoRetailDW;

with 
tabelageral (ano, mes, loja, nome_produto, total_vendas)
as(
select top 200
DATEPART(YEAR, vendas.DateKey) as ano,
DATEPART(MONTH, vendas.DateKey) as mes,
vendas.StoreKey as loja,
produtos.productName as nome_produto,
sum(vendas.SalesAmount) as total_vendas
from FactSales as vendas
inner join DimProduct as produtos 
on produtos.ProductKey = vendas.ProductKey
group by DATEPART(YEAR, DateKey), DATEPART(MONTH, DateKey), vendas.StoreKey, produtos.productName 
order by StoreKey
)

select top 10
*
from tabelageral
order by total_vendas desc