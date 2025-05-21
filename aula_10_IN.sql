use ContosoRetailDW
select top 100 with ties
EmailAddress,
Gender,
MaritalStatus,
TotalChildren,
NumberChildrenAtHome,
NumberCarsOwned as 'Quantidade Carros',
Education
from DimCustomer
WHERE TotalChildren in (3,4)
