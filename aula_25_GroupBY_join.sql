use ContosoRetailDW
select
	T1.ChannelKey,
	t2.ChannelName,
	T1.PromotionKey,
	t3.PromotionName,
	sum(SalesAmount) as soma,
	avg(SalesAmount) as media,
	max(SalesAmount) as maximo,
	min(SalesAmount) as minimo,
	count(SalesAmount) as contagem
from FactSales as T1
inner join DimChannel as t2
on t1.channelKey = t2.ChannelKey
inner join DimPromotion as t3
on t3.PromotionKey = t1.PromotionKey
where t1.channelKey in (1,2)
group by T1.ChannelKey, T1.PromotionKey, t2.ChannelName, t3.PromotionName
order by 1, 2, 3
