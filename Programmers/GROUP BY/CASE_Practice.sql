--[Intended Approach]


-- SELECT CategoryID IN (3,6), (CASE WHEN PRICE < 30 THEN '저렴'             -->SELECT문에서는 IN이 들어갈 수 없다.
						  --WHEN PRICE > 60 THEN '비쌈'
                          --WHEN PRICE BETWEEN 20 AND 60 THEN '적당'
						  --END) AS PriceComparison
--FROM Products
--ORDER BY SupplierID DESC;

-- [Attempt 1]
--SELECT CategoryID,
    --WHERE CategoryID IN (3,6), (CASE WHEN PRICE < 30 THEN '저렴'            
						 -- WHEN PRICE > 60 THEN '비쌈'
                          --WHEN PRICE BETWEEN 20 AND 60 THEN '적당'
						  --END) AS PriceComparison
--FROM Products
--ORDER BY SupplierID DESC;



--[Correct Approach]

SELECT CategoryID,
    (CASE WHEN PRICE < 30 THEN '저렴'             
						  WHEN PRICE > 60 THEN '비쌈'
                          WHEN PRICE BETWEEN 20 AND 60 THEN '적당'
						  END) AS PriceComparison
FROM Products
WHERE CategoryID IN (3,6)
ORDER BY SupplierID DESC;