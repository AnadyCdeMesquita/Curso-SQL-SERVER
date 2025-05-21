--só funciona com o ORDER BY
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
ORDER BY 2 DESC, 3 DESC, 4 DESC, [Quantidade Carros] DESC