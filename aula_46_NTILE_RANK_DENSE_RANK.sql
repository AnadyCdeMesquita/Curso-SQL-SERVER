select 
Name as nome_musica,
composer as compositor,
unitprice  as preco,
genreID,
row_number() over(order by unitprice desc ) as ranking_row_number,
rank() over(order by unitprice desc ) as ranking_Rank,
dense_rank() over(order by unitprice desc ) as ranking_dense_rank,
ntile(5) over(partition by genreID order by unitprice   ) as _ntile
from Track
where composer is not null