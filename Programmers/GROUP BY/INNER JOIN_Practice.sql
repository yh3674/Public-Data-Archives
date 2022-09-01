-- //Condition TABLE: Orders, Shipper
--//Join : ShipperID
--// 표시는 OrderID, ShipperName, Phone


-- [Attempted Approach] 

SELECT Orders.OrderID,Shippers.ShipperID, Shippers.Phone
FROM Orders
INNER JOIN Shippers
ON Order.ShipperID = Shippers.ShipperID;