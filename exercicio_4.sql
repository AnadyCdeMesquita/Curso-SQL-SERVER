select top 100
t1.SalesKey,
t1.SalesAmount,
t2.StoreName,
t2.StoreKey,
t3.CityName,
t3.ContinentName
from FactSales as t1
inner join DimStore as t2
on t1.StoreKey = t2.StoreKey
inner join DimGeography as t3
on t2.GeographyKey = t3.GeographyKey
where t3.ContinentName = 'Europe' 
and t1.SalesKey not in (1, 3, 4, 5) 
and  t1.SalesKey not between 20 and 73
order by t3.CityName asc