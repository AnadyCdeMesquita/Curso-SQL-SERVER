
use Chinook
select
composer as compositor,
milliseconds as tempo,
unitprice as preco, 
--row_number() over(partition by composer order by milliseconds) as linha,
--rank () over(partition by composer order by milliseconds) as ranking
row_number() over(order by unitprice desc) as linha_preco,
rank() over (order by unitprice desc) as ranking_preco
from Track
where composer is not Null