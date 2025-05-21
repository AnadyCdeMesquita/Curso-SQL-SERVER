use ContosoRetailDW

select top 100
C.SalesKey,
C.Datekey,
D.ChannelName,
C.ProductKey,
C.
from FactSales AS C
inner join DimChannel AS D 
on C.channelKey = D.ChannelKey
