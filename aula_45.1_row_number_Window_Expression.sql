use AdventureWorksDW2022
select 
CustomerKey,
FirstName + ' ' + lastName as nome_completo,
ROW_NUMBER() OVER(order by CustomerKey desc),
rank() over(order by CustomerKey desc),
dense_rank() over (order by CustomerKey desc)
from DimCustomer