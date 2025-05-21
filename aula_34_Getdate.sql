select
GETDATE() as data_atual,
GETDATE() + 10 as data_atual_mais10dias,
month(getdate()) as mes,
year(getdate()) as ano,
day(getdate()) as dia


--set dateformat ymd
select
datekey
from Dimdate
where year(datekey) = 2005 and month(datekey) = 12 --and day(datekey) = 01

