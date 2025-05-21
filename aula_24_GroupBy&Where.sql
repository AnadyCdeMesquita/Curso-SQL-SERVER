use ContosoRetailDW
select
	T1.ChannelKey,
	T1.PromotionKey,
	sum(SalesAmount) as soma,
	avg(SalesAmount) as media,
	max(SalesAmount) as maximo,
	min(SalesAmount) as minimo,
	count(SalesAmount) as contagem
from FactSales as T1
where t1.channelKey = 1
	and t1.PromotionKey in (1, 2)
group by T1.ChannelKey, T1.PromotionKey
order by 1, 2
