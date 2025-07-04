-- Write your PostgreSQL query statement below
SELECT 
    si.user_id,
        ROUND(
            AVG(CASE WHEN con.action = 'confirmed' THEN 1 ELSE 0 END)
            , 2) 
        AS confirmation_rate
FROM Signups si
LEFT JOIN Confirmations con
USING(user_id) 
GROUP BY si.user_id