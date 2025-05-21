USE ContosoRetailDW
SELECT TOP 100
CustomerKey,
FirstName,
LastName,
DateFirstPurchase
FROM DimCustomer
WHERE FirstName IS NOT NULL AND LastName IS NOT NULL AND DateFirstPurchase IS NOT NULL
ORDER BY DateFirstPurchase ASC

SELECT TOP 500
*
FROM  DimCustomer
ORDER BY DateFirstPurchase ASC
