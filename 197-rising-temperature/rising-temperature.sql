-- Write your PostgreSQL query statement below
WITH temp_compare AS (
    SELECT id, recordDate, temperature,
    LAG(recordDate) OVER(ORDER BY recordDate ASC) AS prev_date,
    LAG(temperature) OVER(ORDER BY recordDate ASC) AS prev_temp
    FROM weather
)
SELECT id 
FROM temp_compare
WHERE prev_temp < temperature AND prev_date = recordDate - 1
