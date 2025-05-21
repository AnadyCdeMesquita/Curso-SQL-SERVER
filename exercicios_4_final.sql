use AdventureWorksDW2022
select 
count(distinct customerkey)
from FactInternetSales

select top 100
sum(SalesAmount)
from FactInternetSales

select 
avg(SalesAmount)
from FactInternetSales