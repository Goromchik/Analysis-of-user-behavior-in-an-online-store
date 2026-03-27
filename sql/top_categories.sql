-- Топ-5 категорий по просмотрам
SELECT 
    category_code,
    COUNT(*) AS views_count
FROM events
WHERE event_type = 'view'
  AND category_code IS NOT NULL
GROUP BY category_code
ORDER BY views_count DESC
LIMIT 5;