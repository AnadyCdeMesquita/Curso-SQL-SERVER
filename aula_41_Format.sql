
--
select
getdate(),
format(getdate(), 'MM-yy HH:mm')


select
Datekey,
format(Datekey, 'dddd-MMM-yyyy')
from DimDate

