use ContosoRetailDW

select 
FirstName + '  ' + LastName as 'fullname',
* 
from DimEmployee
--where FirstName + '  ' + LastName  like '%david' todos antes
--where FirstName + '  ' + LastName  like 'Luka  Abrus'
--where FirstName + '  ' + LastName  like 'Luka%' todos depois
--where FirstName + '  ' + LastName  like '%david%' antes e depois
--where FirstName + '  ' + LastName like '%a[cv]evedo%'
