--https://school.programmers.co.kr/learn/courses/30/lessons/59034

-- 동물 보호소에 들어온 모든 동물의 정보를 ANIMAL_ID순으로 조회하는 문을 작성
SELECT * FROM ANIMAL_INS -- ANIMAL_INS 모든 항목 조회
ORDER BY ANIMAL_ID  -- ANIMAL_ID를 내림차순으로 조회

SELECT Orders.OrderID,Shippers.ShipperID, Shippers.Phone
FROM Orders
INNER JOIN

SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
FROM Orders
INNER JOIN Customers
ON Orders.CustomerID=Customers.CustomerID;
