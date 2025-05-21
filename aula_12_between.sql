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
--where TotalChildren between 2 and 4
where TotalChildren >=2 and TotalChildren <=4