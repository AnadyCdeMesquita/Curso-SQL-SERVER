use AdventureWorksDW2022
select
SalesTerritoryCountry + '- ' + SalesTerritoryGroup as 'País-Continente'
from DimSalesTerritory
--where SalesTerritoryRegion like 'can_%'
where SalesTerritoryRegion like 'North%'