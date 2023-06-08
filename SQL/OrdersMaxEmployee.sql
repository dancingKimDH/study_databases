SELECT Count(*) AS COU, EMP.LastName, EMP.FirstName
FROM Orders AS ORD
	INNER JOIN Employees AS EMP
    ON ORD.EmployeeID = EMP.EmployeeID
	GROUP BY EMP.EmployeeID
    ORDER BY COU DESC
    LIMIT 1;



