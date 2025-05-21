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
WHERE Education = 'HIGH SCHOOL' and NumberChildrenAtHome >=1 and MaritalStatus <> 'M'
ORDER BY 2 DESC, 3 DESC, 4 DESC, [Quantidade Carros] DESC