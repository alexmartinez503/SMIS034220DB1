USE Northwind;

SELECT 
p.ProductName producto,
c.CategoryName categoria
FROM Products p
INNER JOIN Categories c
ON p.CategoryID = c.CategoryID;

--crear una vista que muestre el nombre del producto, categoria y proveedor 
--ordemados por el nombre de la categoria 

CREATE VIEW listadoProductos
AS
SELECT 
p.ProductName producto,
c.CategoryName categoria,
s.CompanyName proveedor
FROM Products p
INNER JOIN Categories c
ON p.CategoryID = c.CategoryID
INNER JOIN Suppliers s
ON p.SupplierID= s.SupplierID;

SELECT producto, categoria, proveedor FROM listadoProductos;

--modificar la vista anterior de tal manera que muestre los nombres que estan inclidos o no 
--en las ordenes 

ALTER VIEW listadoProductos
AS
SELECT 
p.ProductName producto,
c.CategoryName categoria,
s.CompanyName proveedor
FROM Products p
LEFT JOIN Categories c
ON p.CategoryID = c.CategoryID
LEFT JOIN Suppliers s
ON p.SupplierID= s.SupplierID;


--modificar la vista anterior usando full join 
ALTER VIEW listadoProductos
AS
SELECT 
p.ProductName producto,
c.CategoryName categoria,
s.CompanyName proveedor
FROM Products p
FULL JOIN Categories c
ON p.CategoryID = c.CategoryID
FULL JOIN Suppliers s
ON p.SupplierID= s.SupplierID;
