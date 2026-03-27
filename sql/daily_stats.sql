--Ежедневная статистика
SELECT 
    DATE(event_time) AS date,
    COUNT(DISTINCT user_id) AS unique_users,
    COUNT(*) AS total_events
FROM events
WHERE event_time >= '2019-10-01' 
  AND event_time < '2019-11-01'
GROUP BY DATE(event_time)
ORDER BY date;