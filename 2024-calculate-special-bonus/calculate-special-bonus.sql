-- Write your PostgreSQL query statement below
SELECT employee_id, CASE WHEN employee_id % 2 = 1 AND name NOT LIKE 'M%' THEN salary 
            ELSE 0 
       END AS bonus FROM Employees

-- SELECT employee_id, salary as bonus FROM Employees
-- WHERE employee_id % 2 = 1 AND name NOT LIKE 'M%'
-- UNION 
-- SELECT employee_id, salary* 0 as bonus FROM Employees
-- WHERE employee_id % 2 = 0 OR name LIKE 'M%'

ORDER BY employee_id;