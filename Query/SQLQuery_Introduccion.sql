SELECT
a.SalesOrderID as ID,
a.LineTotal,
b.CurrencyRateID,
c.AverageRate
FROM Sales.SalesOrderDetail a
JOIN Sales.SalesOrderHeader b on a.SalesOrderID = b.SalesOrderID
JOIN Sales.CurrencyRate c on b.CurrencyRateID = c.CurrencyRateID