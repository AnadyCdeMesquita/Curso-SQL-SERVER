use ContosoRetailDW
select top 100 
EmailAddress,
Gender,
MaritalStatus,
TotalChildren,
NumberChildrenAtHome,
NumberCarsOwned as 'Quantidade Carros',
Education
from DimCustomer
WHERE TotalChildren in (3,4)
and Education in ('Bachelors', 'Graduate Degree')
and NumberChildrenAtHome >= 2
and (MaritalStatus <> 'M' or  MaritalStatus is null)
