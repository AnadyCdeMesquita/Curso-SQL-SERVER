
USE BikeStores;

with tab1 as(
SELECT
CategoryID,
BrandID,
count(*) as soma
FROM Production.Product
group by BrandID, CategoryID 
)

select
*,
sum(soma) over (partition by categoryID) as tota_categoria 
from tab1 







