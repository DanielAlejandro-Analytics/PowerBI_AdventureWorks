-- CREATE VIEW Compras_PowerBI as
SELECT
	T1.PurchaseOrderID as OrderID,
	T2.OrderDate as FechaOrden,
	T2.ShipDate as FechaEnvio,
	T1.DueDate as FechaVencimiento,
	T1.ProductID,
	T4.Name as Descripcion,
	T1.OrderQty as CantidadPerdida,
	T1.ReceivedQty as CantidadRecibida,
	T1.RejectedQty as CantidadDevuelta,
	T1.UnitPrice as PrecioUnitario,
	T1.LineTotal as MontoTotal,
	T2.VendorID as ProveedorID,
	T5.Name as Proveedor,
	T3.AverageLeadTime
FROM 
	Purchasing.PurchaseOrderDetail T1
JOIN 
	Purchasing.PurchaseOrderHeader T2 on T1.PurchaseOrderID = T2.PurchaseOrderID
JOIN 
	Purchasing.ProductVendor T3 on T1.ProductID = T3.ProductID
JOIN 
	Production.Product T4 on T3.ProductID = T4.ProductID
JOIN 
	Purchasing.Vendor T5 on T2.VendorID = T5.BusinessEntityID