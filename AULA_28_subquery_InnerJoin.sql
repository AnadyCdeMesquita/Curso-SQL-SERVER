use ContosoRetailDW
SELECT
	DISTINCT(VAL.ProductKey)
from (
select
S2.*
from FactSales as S2
INNER JOIN (
select top 5
S.ProductKey,
sum(S.SalesAmount) as VALOR_VENDA
from FactSales AS S
GROUP BY S.ProductKey
ORDER BY VALOR_VENDA DESC) AS TOPS
ON TOPS.ProductKey = S2.ProductKey
) as VAL
