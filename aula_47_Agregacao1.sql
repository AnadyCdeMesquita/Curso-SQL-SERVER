USE BikeStores;

with tab1 as(
SELECT
CategoryID,
count(*) as soma
FROM Production.Product
group by CategoryID 
),
 tab2 as(
SELECT
CategoryID,
BrandID,
count(*) as soma
FROM Production.Product
group by BrandID, CategoryID 
)

select
tab1.CategoryID,
tab2.BrandID,
tab1.soma as soma1,
tab2.soma as soma2,
tab2.soma * 100 /  tab1.soma as porcentagem
from tab1 
inner join tab2 on tab1.CategoryID = tab2.CategoryID
group by tab1.CategoryID, tab2.BrandID, tab1.soma, tab2.soma 





