use ContosoRetailDW;

with
consumidor (nome_consumidor, localizacao, crianca)
as(
select top 200
LastName as nome_consumidor,
GeographyKey as localizacao,
sum(TotalChildren) as crianca
from DimCustomer
group by LastName, GeographyKey
),
Geo (continente, cidade, localizacao)
as
(
select top 200
ContinentName as continente,
CityName as cidade,
GeographyKey as localizacao
from DimGeography

)
select distinct
t1.nome_consumidor,
t2.cidade,
t2.continente,
sum(t1.crianca) as crianca
from consumidor as t1
inner join geo as t2
on t1.localizacao = t2.localizacao
group by t1.nome_consumidor,t2.cidade,t2.continente
order by sum(t1.crianca) desc
