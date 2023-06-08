-- Count값을 COU라 하자/최댓값은 어떻게?
SELECT Count(*) AS COU, EMP.LastName, EMP.FirstName
FROM Orders AS ORD
	INNER JOIN Employees AS EMP
    ON ORD.EmployeeID = EMP.EmployeeID
    -- 두 테이블의 EmployeeID가 같을 때
	GROUP BY EMP.EmployeeID
    -- 각 EmployeeID 마다 더할 수 있도록
    ORDER BY COU DESC
    -- 내림차순 정리 및 최댓값 1만 표시되도록 제한
    LIMIT 1;



