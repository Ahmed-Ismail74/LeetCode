# Write your MySQL query statement below
SELECT firstName, lastName, city, state
FROM Person pr
LEFT JOIN Address ad ON ad.personId = pr.personId