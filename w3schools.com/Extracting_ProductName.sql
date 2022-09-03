--[Attempted Approach]
----SELECT Orders.OrderID,Customers.CustomerName,Shippers.ShipperName,Products.ProductName
--FROM (((Orders INNER JOIN Customers 
					--ON Orders.CustomerID = Customers.CustomerID)
				--INNER JOIN Shippers 
                	--ON Orders.ShipperID = Shippers.ShipperID)
                --INNER JOIN Products
                	--ON OrderDetails.ProductID = Products.ProductID)
                --;



--[Corrected Approach]
SELECT Orders.OrderID,Customers.CustomerName,Shippers.ShipperName,Products.ProductName
FROM ((((Orders INNER JOIN Customers 
					ON Orders.CustomerID = Customers.CustomerID)
				INNER JOIN Shippers 
                	ON Orders.ShipperID = Shippers.ShipperID)
                INNER JOIN OrderDetails                         -- OrderDeatils를 거쳐 Products로 
                	ON Orders.OrderID = OrderDetails.OrderID)
                INNER JOIN Products
                	ON OrderDetails.ProductID = Products.ProductID)
                ;
        