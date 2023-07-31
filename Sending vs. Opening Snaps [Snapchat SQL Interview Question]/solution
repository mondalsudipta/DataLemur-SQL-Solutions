SELECT 
  a2.age_bucket, 
  ROUND(
    100 * SUM(a1.time_spent) FILTER (
      WHERE 
        a1.activity_type = 'send'
    ) / SUM(a1.time_spent), 
    2
  ) AS send_perc, 
  ROUND(
    100 * SUM(a1.time_spent) FILTER (
      WHERE 
        a1.activity_type = 'open'
    ) / SUM(a1.time_spent), 
    2
  ) AS open_perc 
FROM 
  activities AS a1 
  INNER JOIN age_breakdown AS a2 ON a1.user_id = a2.user_id 
WHERE 
  a1.activity_type = 'open' 
  OR a1.activity_type = 'send' 
GROUP BY 
  a2.age_bucket;
