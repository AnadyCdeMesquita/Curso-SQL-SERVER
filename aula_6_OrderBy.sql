use ContosoRetailDW

select
*
from DimCustomer
where FirstName is not null and lastname is not null
order by FirstName desc, lastname asc


