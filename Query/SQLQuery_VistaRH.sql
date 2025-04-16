-- CREATE VIEW RH_PowerBI as
SELECT
	T1.BusinessEntityID,
	T1.StartDate as FechaContrato,
	T1.EndDate as FinContrato,
	T2.GroupName as Gerencia,
	T2.Name as Departamento,
	T3.FirstName + ' ' +  T3.LastName as NombreEmpleado,
	T4.JobTitle,
	T4.Gender,
	T4.MaritalStatus,
	T4.BirthDate
FROM 
	HumanResources.EmployeeDepartmentHistory T1
JOIN 
	HumanResources.Department T2 on T1.DepartmentID = T2.DepartmentID
JOIN 
	Person.Person T3 on T1.BusinessEntityID = T3.BusinessEntityID
JOIN 
	HumanResources.Employee T4 on T1.BusinessEntityID = T4.BusinessEntityID