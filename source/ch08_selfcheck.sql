-- Active: 1749604230285@@127.0.0.1@3306@market
-- 셀프체크
-- 8장에서 만든 market DB의 상품 중 가격이 낮은 하위 4개의 누적 매출을 다음과 같이 조회하고 싶습니다.
-- 이를 위한 쿼리를 작성하세요.
-- (ch08_09_market_db.png 참고)

-- ----------------------------------
-- 상품명        | 가격     | 누적 매출
-- ----------------------------------
-- 플레인 베이글  | 1300    | 6500
-- 우유 900ml    | 1970    | 9850
-- 크림 치즈      | 2180    | 8720
-- 우유 식빵      | 2900    | 8700

-- 누적 매출은 price * count(가격 * 판매 수량)으로 구합니다.

USE market;

-- 상품(p.id)의 누적 매출(p.price * od.count)

-- JOIN 결과 확인
SELECT p.name, p.price, od.count, o.status
FROM products p
JOIN order_details od ON p.id = od.product_id
JOIN orders o ON od.order_id = o.id;

-- '배송 완료'인 행만 보이기
SELECT p.name, p.price, od.count, o.status
FROM products p
JOIN order_details od ON p.id = od.product_id
JOIN orders o 
  ON od.order_id = o.id
  AND o.status = '배송 완료';

-- 집계 함수 사용
SELECT p.name, p.price, SUM(p.price * od.count)
FROM products p
JOIN order_details od ON p.id = od.product_id
JOIN orders o 
  ON od.order_id = o.id
  AND o.status = '배송 완료'
GROUP BY p.id;

-- 가격 순으로 정렬
SELECT p.name, p.price, SUM(p.price * od.count)
FROM products p
JOIN order_details od ON p.id = od.product_id
JOIN orders o 
  ON od.order_id = o.id
  AND o.status = '배송 완료'
GROUP BY p.id
ORDER BY p.price, p.name;

-- 상위 4개만 보이기
SELECT 
  p.name AS '상품명', 
  p.price AS '가격', 
  SUM(p.price * od.count) AS '누적 매출'
FROM products p
JOIN order_details od ON p.id = od.product_id
JOIN orders o 
  ON od.order_id = o.id
  AND o.status = '배송 완료'
GROUP BY p.id
ORDER BY p.price, p.name
LIMIT 4;

-- 위와 같은 sql문은 mysql에서는 허용되나, 다른 db에서는 허용되지 않을 수 있음.
-- group by에 select문에 있는 컬럼들을 명시해 주는 것이 좋음.
-- 예) GROUP BY p.name, p.price
SELECT 
  p.name AS '상품명', 
  p.price AS '가격', 
  SUM(p.price * od.count) AS '누적 매출'
FROM products p
JOIN order_details od ON p.id = od.product_id
JOIN orders o 
  ON od.order_id = o.id
  AND o.status = '배송 완료'
GROUP BY p.name, p.price
ORDER BY p.price, p.name
LIMIT 4;