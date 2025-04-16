-- CREATE VIEW Produccion_PowerBI as
SELECT
	T1.WorkOrderID,
	T1.StartDate as FechaInicio,
	T1.EndDate as FechaFin,
	T1.DueDate as FechaVencimiento,
	T4.LocationID,
	T4.Name as Location,
	T1.ProductID,
	T2.Name as Producto,
	T5.ProductModelID,
	T5.Name as ProcutModel,
	T1.OrderQty as Cantidad,
	T1.StockedQty as Almacenado,
	T2.StandardCost as CostoSantandard,
	T2.ListPrice as PrecioLista
FROM 
	Production.WorkOrder T1
JOIN 
	Production.Product T2 on T1.ProductID = T2.ProductID
JOIN 
	Production.WorkOrderRouting T3 on T1.WorkOrderID = T3.WorkOrderID
JOIN 
	Production.Location T4 on T3.LocationID = T4.LocationID
JOIN 
	Production.ProductModel T5 on T2.ProductModelID = T5.ProductModelID
