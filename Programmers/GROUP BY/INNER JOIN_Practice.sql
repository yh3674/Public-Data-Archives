-- //Condition TABLE: Orders, Shipper
--//Join : ShipperID
--// 표시는 OrderID, ShipperName, Phone

-- https://www.w3schools.com/mysql/trymysql.asp?filename=trysql_select_join

-- [Attempted Approach] 

--SELECT Orders.OrderID,Shippers.ShipperID, Shippers.Phone
--FROM Orders
--INNER JOIN Shippers
--ON Order.OrderID = Shippers.ShipperID;

-- [Correct Approach] 
SELECT Orders.OrderID,Shippers.ShipperID, Shippers.Phone
FROM Orders
INNER JOIN Shippers
ON Orders.ShipperID = Shippers.ShipperID;