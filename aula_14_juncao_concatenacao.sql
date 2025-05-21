use ContosoRetailDW

select top 100
firstName + '  ' + LastName as fullname,
*
from DimEmployee