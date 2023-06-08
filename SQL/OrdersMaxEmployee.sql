-- Count값을 COU라 하자/최댓값은 어떻게?
--방법 1
SELECT Count(*) AS COU, EMP.Last_name, EMP.First_name
FROM Orders AS ORD
	INNER JOIN Employees AS EMP
    ON ORD.EmployeeID = EMP.EmployeeID
    -- 두 테이블의 EmployeeID가 같을 때
	GROUP BY EMP.EmployeeID
    -- 각 EmployeeID 마다 더할 수 있도록
    ORDER BY COU DESC
    -- 내림차순 정리 및 최댓값 1만 표시되도록 제한
    LIMIT 1;

--방법 2
--ALL_COU(아래 SELECT문) 테이블(만들어진 임시테이블)의 COU의 최댓값, 그리고 나머지 값을 SELECT
SELECT MAX(ALL_COU.COU) AS MAX_COU, ALL_COU.Last_name, ALL_COU.FIR
FROM ( 
    --아래 SELECT문을 ALL_COU라 하자
    --AS를 이용해서 임시테이블화. 괄호로 감싸기.
		SELECT ORD.EmployeeID, Count(ORD.EmployeeID) AS COU, EMP.LastName AS Last_name, EMP.FirstName AS First_name
        FROM Orders AS ORD
        INNER JOIN Employees AS EMP
        ON ORD.EmployeeID = EMP.EmployeeID
        GROUP BY ORD.EmployeeID
        ) AS ALL_COU;


