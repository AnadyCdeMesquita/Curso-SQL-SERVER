use ContosoRetailDW

--soma
select
	sum(SalesAmount) as soma
from FactSales

--media
select
	avg(SalesAmount) as media
from FactSales

--maximo
select
	max(SalesAmount) as maximo
from FactSales

--minimo
select
	min(SalesAmount) as minimo
from FactSales

--count
select
	count(SalesAmount) as soma_linhas
from FactSales