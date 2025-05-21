
select 
t2.SalesTerritoryKey as territorio,
t2.SalesTerritoryRegion as regiao,
sum(t1.SalesAmount) as total
from FactInternetSales as t1
inner join DimSalesTerritory as t2
on t1.salesTerritoryKey = t2.salesTerritoryKey
WHERE ShipDate between '20130101' and '20131231'
GROUP BY t2.SalesTerritoryKey, t2.SalesTerritoryRegion
ORDER  BY total desc

select
*
from DimSalesTerritory 




