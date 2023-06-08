-- Customer Name & Count(*) : 고객 이름과 주문 건 수의 합
SELECT CUS.CustomerName, count(CUS.CustomerName) AS Sum
FROM Orders AS ORD
    INNER JOIN Customers AS CUS
    ON ORD.CustomerID = CUS.CustomerID
GROUP BY CUS.CustomerName;
