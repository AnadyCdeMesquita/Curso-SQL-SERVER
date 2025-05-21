use AdventureWorksDW2022
select top 10 with ties
Productkey,
SafetyStockLevel 
from DimProduct
where ProductSubcategoryKey is not Null and WeightUnitMeasureCode is not Null and SizeUnitMeasureCode is not Null
order by SafetyStockLevel  desc