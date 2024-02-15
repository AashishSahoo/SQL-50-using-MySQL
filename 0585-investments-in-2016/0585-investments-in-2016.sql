# Write your MySQL query statement below

WITH unique_cities AS 
(
    SELECT *
    FROM insurance
    GROUP BY lat, lon
    HAVING COUNT(*) = 1
),

shared_tiv_2015 AS 
(
    SELECT tiv_2015
    FROM insurance
    GROUP BY tiv_2015
    HAVING COUNT(*) > 1
)

SELECT ROUND(SUM(tiv_2016), 2) AS tiv_2016
FROM unique_cities 
WHERE tiv_2015 IN (SELECT tiv_2015 FROM shared_tiv_2015)