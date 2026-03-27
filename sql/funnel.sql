-- Воронка конверсии: сколько пользователей на каждом этапе
SELECT 
    event_type,
    COUNT(DISTINCT user_id) AS users
FROM events
WHERE event_time >= '2019-10-01' 
  AND event_time < '2019-11-01'
GROUP BY event_type
ORDER BY users DESC;