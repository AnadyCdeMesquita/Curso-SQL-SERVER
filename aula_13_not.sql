use ContosoRetailDW
select top 100 
EmailAddress,
Gender,
MaritalStatus,
TotalChildren,
NumberChildrenAtHome,
NumberCarsOwned as 'Quantidade Carros',
Education,
BirthDate
from DimCustomer
--where Education not in ('High school', 'Partial College')
--where not TotalChildren between 2 and 4
where not BirthDate between '1950-01-01' and '1960-01-01'
--where TotalChildren >=2 and TotalChildren <=4