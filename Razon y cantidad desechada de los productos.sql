USE AdventureWorks2019
GO

--Se requiere saber la razón y cantidad desechada de los productos

SELECT pp.Name As Producto, psr.ScrapReasonID, psr.Name AS Razon, pwo.ScrappedQty AS Cantidad
FROM Production.ScrapReason psr
INNER JOIN Production.WorkOrder pwo
ON psr.ScrapReasonID = pwo.ScrapReasonID
INNER JOIN Production.Product pp
ON pwo.ProductID = pp.ProductID
ORDER BY psr.ScrapReasonID ASC