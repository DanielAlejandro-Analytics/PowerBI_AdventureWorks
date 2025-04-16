-- CREATE VIEW Inventario_powerBI as
SELECT
	T1.ModifiedDate as FechaEntrada,
	T1.ProductID,
	T2.Name as Producto,
	T4.ProductModelID,
	T4.Name as ProductLine,
	T3.LocationID,
	T3.Name as Location,
	T1.Quantity
FROM 
	Production.ProductInventory T1
JOIN 
	Production.Product T2 on T1.ProductID = T2.ProductID
JOIN 
	Production.Location T3 on T1.LocationID = T3.LocationID
JOIN 
	Production.ProductModel T4 on T2.ProductModelID = T4.ProductModelID