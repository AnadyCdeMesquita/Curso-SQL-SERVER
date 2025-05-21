USE AdventureWorksDW2022
select
ProductKey
from FactInternetSales
where ProductKey not between 310 and 350
--where not ProductKey in (310,314)
--where (ProductKey = 310 or ProductKey = 314)
--where not OrderDate = '2010-01-01' 
--order by OrderDate asc
--where not ProductKey in (310, 314, 346) 