use ContosoRetailDW;

with
promocao (chave, local_promocao, lojas)
as 
(
select
T1.PromotionKey as chave,
T1.promotionName as local_promocao,
T1.PromotionCategory as lojas
from DimPromotion as T1
),
vendas (chave1,chave_produto, qtde)
as
(
 select
 T2.PromotionKey as chave1,
 T2.ProductKey as chave_produto,
 sum(T2.SalesQuantity) as qtde
 from FactSales as T2
 group by T2.PromotionKey, T2.ProductKey

)

select
T3.local_promocao,
T3.lojas,
T4.chave_produto,
sum(T4.qtde)

from promocao as T3
left join vendas as T4
on T3.chave = T4.chave1
group by T3.local_promocao, T3.lojas, T4.chave_produto