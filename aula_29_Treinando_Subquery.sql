use ContosoRetailDW

select top 100
*
from FactSales
where SalesKey in(
select top 100
	CustomerKey
from DimCustomer
where gender = 'M')