SELECT COUNT(CategoryID) AS CNT_ID, CategoryID AS P_ID
-- CNT_ID = 각 CategoryID 마다의 상품 갯수
-- 위 CategoryID는 1 ~ 8이며, 이 Column의 이름을 P_ID라 하자
FROM Products AS P
-- Products라는 테이블에서 찾으며, 이 테이블의 이름을 P라 하자
GROUP BY CategoryID
-- CategoryID로 카테고리화하고
HAVING COUNT(CategoryID) >= 10
-- 이때 CategoryID가 10 이상인 항목들을 찾는다